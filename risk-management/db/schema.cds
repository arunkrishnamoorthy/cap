namespace sap.ui.riskmanagement;

using {managed} from '@sap/cds/common';

entity Risks : managed {
    key ID          : UUID;
        title       : String(100);
        priority    : String(5);
        description : String;
        impact      : Integer;
        criticality : Integer;
        mitigations : Association to Mitigations;
}

entity Mitigations : managed {
    key ID          : UUID;
        description : String;
        owner       : String;
        timeline    : String;
        risks       : Association to many Risks
                          on risks.mitigations = $self;
}
