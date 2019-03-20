da run damlc -- docs -o "autogen/CdmTypes.md" -f "Markdown" "../daml/ISDA/CDM/EventSpecificationModule.daml" --include-modules "ISDA.CDM.Types.Classes,ISDA.CDM.Types.Enums"
da run damlc -- docs -o "autogen/EventBuilder.md" -f "Markdown" "../daml/ISDA/CDM/EventSpecificationModule.daml" --include-modules "ISDA.CDM.Types.EventSpec,ISDA.CDM.EventBuilder.**" --exclude-modules "ISDA.CDM.EventBuilder.Base"
da run damlc -- docs -o "autogen/RefData.md" -f "Markdown" "../daml/ISDA/CDM/EventSpecificationModule.daml" --include-modules "ISDA.CDM.Types.ReferenceData.**"
da run damlc -- docs -o "autogen/Auxiliary.md" -f "Markdown" "../daml/ISDA/CDM/EventSpecificationModule.daml" --include-modules "ISDA.CDM.Auxiliary.**" --exclude-modules "ISDA.CDM.Auxiliary.Netting.checkTransferPrimitive"
