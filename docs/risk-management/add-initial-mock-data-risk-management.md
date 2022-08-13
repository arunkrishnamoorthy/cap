# Add initial mock data to the Service - Risk Management

In order to load the intitial data from the CSV files for the service. In the `db` folder hierarchy we need to maintiain the csv files that follows this naming convention for each entity.

```
<namespace>-<entity_name>.csv
```

In this example, at the `schema.cds` file, we defined the namespace as `sap.ui.riskmanagement` and we have two entities named `Risks` and `Mitigations`. So I am going to organize the csv data by creating a new folder in `db` named `data` and create two csv files one for each entity naming them as follows.

```
sap.ui.riskmanagement-Risks.csv
sap.ui.riskmanagement-Mitigations.csv
```

Sample data, i will take it from the `github` example of the Risk management project.

[Risk Management - SAP Samples Data - Github](https://github.com/SAP-samples/cloud-cap-risk-management/tree/master/templates/create-cap-application/db/data)

I have copied the sample data and renamed the properties name as defined in my entity sets.

> Each column is seperated using a seperator `;`

After adding the csv files, execute the `cds watch` command to run the service.

Click on the entity set names, to view the data.

**Risks\***

<img src="risk-management/assets/images/risks-data.png" width="700" />

**Mitigations**

<img src="risk-management/assets/images/mitigations-data.png" width="700" />

### Resources

Following are the files, i have used for my example.

**Risks**

[sap.ui.riskmanagement-Risks.csv](/media/sap.ui.riskmanagement-Risks.csv ":include")

**Mitigations**

[sap.ui.riskmanagement-Mitigations.csv](media/sap.ui.riskmanagement-Mitigations.csv ":include")
