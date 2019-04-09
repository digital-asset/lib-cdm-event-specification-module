# How to use the Haskell module

To generate the Haskell representation of the specification, from a terminal run

    ./scripts/generate-haskell.sh

This will generate a `src` folder including all Haskell files. Note that the module is currently not packaged into an own library. If you want to use the functions that are provided by the Event Specification Module, copy the source files.

It is also possible to run all tests in Haskell by running:

    stack test cdm:tests
