# CAP Application Command Line

To initialize the CAP application, run the following command. 
```
cds init
```

To build the CAP application, use the following command. 
```
cds build
```

To choose a specific build target. the available target are hana and nodejs
```
cds build --for <target>
```

To deploy the CAP application. 
```
cds deploy 
```

To deploy the application specifying a target. SQL option for SQL lite database.
```
cds deploy --to <hana:sql>
```

To add features to the cap. 
```
cds add <feature>
```

The list of features that are supported can be found using 

```
cds add --help
```

```
    The following <features> are supported so far:

    hana          - adds configuration for SAP HANA databases

    sqlite        - adds configuration for SQLite databases

    xsuaa         - adds configuration for authentication via XSUAA

    multitenancy  - adds configuration for multitenancy

    toggles       - adds configuration for feature toggles

    extensibility - adds configuration for extensibility

    mtx           - adds configuration for multitenancy, feature toggles and extensibility

    approuter     - adds configuration for the Cloud Foundry approuter

    mta           - adds an mta.yaml file for MTA-based SAP Business Technology Platform deployment

    cf-manifest   - adds manifest.yml and services-manifest.yml files for Cloud Foundry native deployment

                    This approach makes use of the 'Create-Service-Push Plugin' that has to be installed
                    separately using cf install-plugin Create-Service-Push.
                    cf create-service-push creates the service(s) and pushes the application(s) to the
                    SAP Business Technology Platform.

    pipeline      - adds files for CI/CD pipeline integration

    samples       - adds simple sample files

    data          - adds data content for CSN model entities (as csv files)

    helm          - adds helm chart folder that contains the files needed to deploy the application using Kyma.

    html5-repo    - adds configuration for HTML5 Application Deployer to Helm Chart (Kyma Only).
```

To get the CDS environment variables. 

```
cds env               #> shortcut to `cds env ls`
cds env ls            #> lists all settings in properties format
cds env ls folders    #> lists the `requires.sql` settings
cds env get           #> prints all settings in JSON-like format
cds env get folders   #> prints the `requires.sql` settings
cds env get defaults  #> prints defaults only
cds env ?             #> get help
```

To bind the service instance to the CAP application. use the following command. 
```
cds bind --to servicename:servicekey
```
The shortcut -2 can be used in place of --to. 

