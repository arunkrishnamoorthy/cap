# Add Data Model - Risk Management

After initializing the project, you will see a folder created with the name `db`. In this folder we will organize our data models and expose them to the service.

To define a data model, create a file in the folder with an extension `.cds`.

Following is the [namespaces](namespaces.md) i am going throughout this application.

```
namespace sap.ui.riskmanagement;
```

Import the managed [aspect](aspects.md) from the `common` cds package.

```
using {managed} from '@sap/cds/common';
```

**Entity: Risks**

Define an Entity `Risks` by extending the `managed` aspects from the Common CDS.

```
entity Risks : managed {
    key ID          : UUID;
        title       : String(100);
        priority    : String(5);
        description : String;
        impact      : Integer;
        criticality : Integer;
}
```

**Entity: Mitigation**

Define an entity `Mitigations` by extending the managed aspects from Common CDS.

```
entity Mitigations : managed {
    key ID          : UUID;
        description : String;
        owner       : String;
        timeline    : String;
}
```

**Association**

We have defined two entity, risks and mitigations. Now lets declare an association between the two.

In the entity `Risks` decalre an association to the `Mitigations` entity.

```
entity Risks : managed {
    key ID          : UUID;
        title       : String(100);
        priority    : String(5);
        description : String;
        impact      : Integer;
        criticality : Integer;
        mitigations : Association to Mitigations;
}
```

In the entity `Mitigations` declare the cardinality of the Associations.

```
entity Mitigations : managed {
    key ID          : UUID;
        description : String;
        owner       : String;
        timeline    : String;
        risks       : Association to many Risks             \\ Association
                          on risks.mitigations = $self;
}
```

The association is declared with Many to represent one mitigation can be used for multiple risks.  
Here what the system does is in the entity `Risks` it defines a new `navigation property` called `migitation_ID` and is going to be mapped to the ID property of the `Migitgations` entity.

The final code of your schema should look like below.

```
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
```

Next Steps: [Create a Service to Expose the data model](/risk-management/add-service-risk-management.md)
