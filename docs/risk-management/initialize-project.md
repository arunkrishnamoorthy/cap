# Initialize Project - Risk Management

To initialize the Project, Open the VS Code and Open/Create the workspace in which you want to organize your projects.
Then create a directory in your workspace to organize the CAP based service project.

# Create a Directory for Risk management

In your workspace, create a folder named `risk-management` Under this folder we will initialize our cap project.

<img src="risk-management/assets/images/create-directory-risk-manage.png" width="700" />

You can see a folder created in your workspace.

<img src="risk-management/assets/images/risk-management-dir.png" width="700" />

Navigate the terminal to `risk-management` folder using `cd risk-management`.

<img src="risk-management/assets/images/navigate-risk-management.png" width="700" />

Execute the `cds` initialize command to initialize the `CAP` project in the `risk-management` folder.

```
cds init
```

**Output**

<img src="risk-management/assets/images/cds-init-result.png" width="700" />

You can see in the explorer, the following app structure created in the `risk-management` folder.

<img src="risk-management/assets/images/folders-created.png" width="700" />

Execute the command below to install the dependencies.

```
npm install
```

To run the project execute the command `cds watch`. This may not produce any output now.

Next Steps: [Add Data model to the Project](risk-management/add-risk-and-mitigation-data-model.md)
