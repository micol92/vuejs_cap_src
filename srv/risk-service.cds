using { sap.ui.riskmanagement as my } from '../db/schema';

@path: 'service/risk'
service RiskService @(requires: 'any') {
  entity Risks as projection on my.Risks;
    annotate Risks with @odata.draft.enabled;
  entity Mitigations as projection on my.Mitigations;
    annotate Mitigations with @odata.draft.enabled;

    @readonly
    entity Suppliers as projection on my.Suppliers;      

}