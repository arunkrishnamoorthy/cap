# Add Service to expose the data model

In the `srv` folder of the application, create a new cds file and expose the data models defined in the previous steps as service.

Create a new file called `rm-service.cds`.

Import the entities defined in the Data Model `db/schema.cds` to expose them in the service.

```
using { sap.ui.riskmanagement as my } from '../db/schema;
```

Use the keyword `service` to define the service and list the entities from Schema Model as projects.

Add the entities as projection. you can use auto complete to map the entities.

<img src="risk-management/assets/images/expose-entities-service.png" width="700" />

```
using {sap.ui.riskmanagement as my} from '../db/schema';

service RiskService {
    entity Risks       as projection on my.Risks;
    entity Mitigations as projection on my.Mitigations;
}
```

To preview the service, execute the command `cds watch`. This will start the localhost server and start the service.

<img src="risk-management/assets/images/cds-watch.png" width="700" />

Open the local host Url in the browser.

<img src="risk-management/assets/images/risk-service-preview.png" width="700" />

Click on the $metadata, to see the service metadata.

<img src="risk-management/assets/images/metadata.png" width="700" />

You can see additional properties in the entity that are not defined in our `Schema.cds`. These are inherited from the `managed` aspects.

<img src="risk-management/assets/images/managed-aspect-properties.png" width="700" />

The service path for the application is as below when generated.

<img src="risk-management/assets/images/service-path.png" width="700" />

To Change the path, add the path annotation in the rm-service.cds file.

```
using {sap.ui.riskmanagement as my} from '../db/schema';

@path : 'service/risk'

service RiskService {
    entity Risks       as projection on my.Risks;
    entity Mitigations as projection on my.Mitigations;
}
```

The Path of the service will now changed as below.

<img src="risk-management/assets/images/new-service-path.png" width="700" />

If you look at the Risks and Mitigations entity set, we will have an empty response as there is no data.

> The Web Applications are not yet generated as we have not added UI annotations yet.
