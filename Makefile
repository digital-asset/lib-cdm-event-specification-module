# Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

SHELL := /usr/bin/env bash
.SHELLFLAGS := -euo pipefail -c

# logic to force use docker builders
ifneq ($(FORCE_DOCKER),true)
	local_da := $(shell which da)
endif


################
# dar pipeline
################

# test -> build

# damlc command - use docker or local
damlc_cmd := da run damlc --

sdk_version ?= $(shell cat daml/da.yaml | grep sdk-version | tr -d ' ' | cut -d':' -f2)
damlc_docker_cmd := \
	docker run -t --rm \
	-v $(PWD):/usr/src/ \
	-w /usr/src \
	digitalasset/daml-sdk:$(sdk_version)-master $(damlc_cmd)

damlc := $(if $(local_da), $(damlc_cmd), $(damlc_docker_cmd))

# results
dar_test_result := daml/target/DarTests.xml
dar_build_result := daml/target/EventSpecificationModule.dar

# source
damlsrc := daml/src


# dar test
.PHONY: test-dar
test-dar: $(dar_test_result)

# TODO - move to junit files when new version of SDK comes out
$(dar_test_result): $(shell find $(damlsrc) -type f) daml/da.yaml
	@echo test triggered because these files changed: $?
	$(damlc) test --junit $@ $(damlsrc)/Test/Main.daml


# dar build
.PHONY: build-dar
build-dar: $(dar_build_result)

$(dar_build_result): $(dar_test_result)
	@echo build triggered because these files changed: $?
	$(damlc) package $(damlsrc)/Org/Isda/Cdm/$(@F:.dar=.daml) $(basename $@)

########
# clean
########

.PHONY: clean
clean:
	-rm -vfr target/*
