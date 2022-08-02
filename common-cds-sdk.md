# Common CDS from SDK

Common CDS is a reusable model that is pre-built and shipped as part of CAP CDS. 

```
@sap/cds/common
```

The advantages of using reusable models is to reduce the implementation efforts, streamline the project development. Optimize implementation and runtime performance. Automated support for localization and value helps. Additional properties required can be extended using [Aspects](aspect.md).

After [initializing your project](set-up-new-project.md) and installing the node package, navigate to the path ```node_modueles/@sap/cds/common.cds```.

<img src="./assets/images/path-to-common-cds.png" width="700" />


### Types

The Common CDS, has the following types declared which we can reuse in our program. 

```
type Language : Association to sap.common.Languages;
type Currency : Association to sap.common.Currencies;
type Country : Association to sap.common.Countries;
type User : String(255);
```

The Common CDS, has four types declared in it. 
The Types Language, Currency and Country are Associated to Entities Languages, Currencies and Country of the Same Context and provide value helps based on the association and annotation added in the CDS View. 

If we want to use the any type from the Common CDS View, we need to import the type and we can use it in our entity. 

**Example** 

```
  using { Country } from '@sap/cds/common';
  
  entity Address {
    street: String(40);
    town: String(40);
    country: Country; // Reused from @sap/cds/common
  }
```

### Entity

The Common CDS View has 3 Entities which provides data and can be reused. All entity extend an aspect CodeList which can be used for your own code list. 

**Aspect Code List** 
```
  aspect CodeList @(cds.autoexpose, cds.persistence.skip: 'if-unused'
  {
    name: localized String(255) @title: 'i18n>Name';
    descr: localized String(1000) @title: 'i18n>Description';
  }
```

The Aspect Code List is annotated with the auto expose and presistance features to avoid storing of data if un-used. 
It has localized element name and description annotated with title. 

