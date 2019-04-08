# Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

da run damlc -- docs -o "autogen/CdmTypes.md" -f "Markdown" "../daml/src/Org/Isda/Cdm/EventSpecificationModule.daml" --include-modules "Org.Isda.Cdm.Classes,Org.Isda.Cdm.Enums"
da run damlc -- docs -o "autogen/EventBuilder.md" -f "Markdown" "../daml/src/Org/Isda/Cdm/EventSpecificationModule.daml" --include-modules "Org.Isda.Cdm.EventSpecificationModule.Types.EventSpec,Org.Isda.Cdm.EventSpecificationModule.EventBuilder.**" --exclude-modules "Org.Isda.Cdm.EventSpecificationModule.EventBuilder.Base"
da run damlc -- docs -o "autogen/RefData.md" -f "Markdown" "../daml/src/Org/Isda/Cdm/EventSpecificationModule.daml" --include-modules "Org.Isda.Cdm.EventSpecificationModule.Types.ReferenceData.**"
da run damlc -- docs -o "autogen/Auxiliary.md" -f "Markdown" "../daml/src/Org/Isda/Cdm/EventSpecificationModule.daml" --include-modules "Org.Isda.Cdm.EventSpecificationModule.Auxiliary.**" --exclude-modules "Org.Isda.Cdm.EventSpecificationModule.Auxiliary.Netting.checkTransferPrimitive"
