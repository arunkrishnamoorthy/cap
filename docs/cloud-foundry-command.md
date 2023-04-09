# Cloud Foundry

Cloud foundry applications are made of services instances and applications. The service instances are bound the application via Binding. The Binding automatically exchanges the credentials between the microservices application. 
In case of local testing, the service key can be used to establish the link. 

To know the version of the cloud foundry.
```
cf --version
```

To login to the cloud foundry account. This command will ask to choose the API End point, enter your credentails and then choose the organization and space. 

```
cf login 
```

If the cloud foundry end point is already set and if you like to change the end point then use the following command. 

```
cf login -a <api_endpoint_url>
```

To check the CF account, the BAS studio is connected to, use the target. 
```
cf target
```

To get the list of all services in the Cloud foundry. 

```
cf services
```

To get the detail about a specific service instance. 

```
cf service <service_name>
```

To get the list of services starting with specific keyword. 
```
cf services | grep <search_word>
```
for example, to search all service instance that has exercise in its name. 
```
cf services | grep exercise
```


To get the details on the service-keys that are bound to the service instance. 

```
cf service-keys <service-name>
```


To create a new service from the command line tools. The compiler options could differ for different service type. 

```
cf create-service <service-type> <service-plan> <service-name> <compiler-options>
```

for example. Create an XSUAA services of plan application and compile security data from xs-security.json file. 

```
cf create-service xsuaa application exercise-auth -c xs-security.json
```

To create a new service key for the service instance. 

```
cf create-service-key <service-name> <service-key>
```

To get the details of the service key. 

```
cf service-key <service-name> <service-key>
```

To delete the service key.

```
cf delete-service-key <service-name> <service-key>
```

To delete a service, run the following command. 

```
cf delete-service <service-name>
```

To get the list of application instances in the cloud foundry. 

```
cf apps
```

To view the details of a particular application.

```
cf app <application>
```

To delete the application instance. 

```
cf delete <application>
```

To undeploy an application from cloud foundry and delete its all associated keys and bindings. 
here the application name, is the name defined in the MTA file. 

```
cf undeploy <application_name> --delete-service-brokers --delete-services --delete-service-keys
```

Install a plugin. 
```
cf install-plugin -f <url of plugin>
```

To get the list of plugin installed. 
```
cf plugins 
```

To get the list of plugins installed with specific keywords. 
```
cf plugins | grep <search_word>
```
for example. 
```
cf plugins | grep multiapps
```

Deploy your application from CLI tool. 
```
cf deploy 
```

To get details about the deployed MTA. The name of the application in the mta file is the mta id.  
```
cf mta <mta_id>
```

To get all the MTA applications deployed in the system. 
```
cf mtas
```

To list all active operations for a multi target applications.
```
cf mta-ops
```

To download logs of the multi target application operation. use the command `download-mta-op-logs`. 
the short key is `dmol` and can be used as an alternative to `download-mta-op-logs`. 

```
cf dmol -i <operation_id>
```

the other flags that can be used is -d for selecting the directory to store the logs. 
--mta to get the logs specific to an mta application. 
--last to get the last no of logs. 

To get the logs of a specific service instance. 
```
cf logs <service-name> --recent
```


To purge unwanted configurations that still remains even after the service is deleted. 
```
cf purge-mta-config 
```

More information about CF Cli releated to SAP BTP can be found on this link.

https://help.sap.com/docs/btp/sap-business-technology-platform/org-administration-using-cloud-foundry-cli


