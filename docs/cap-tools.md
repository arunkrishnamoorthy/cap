# CAP Tools

To build services using CAP, we need to install the SAP node package for the CAP tools.
Using the node pacakge manager(npm) install the CAP tools. For this you need to have Node JS Already installed.
If Node JS is not installed refer to this Section. [Install Node JS](install-node-js.md)

```
npm install --global @sap/cds-dk
```

> We need to install the pacakge globally to access it across all application. For Mac OS you may run into permission issues to install globally. refer to this link for resolving the error: https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally

To confirm if the CAP CDS Pacakge is installed, execute the command `cds`. This will return all the possible commands.

```
cds
```

Run the command below in the terminal to see the version.

```
cds --version
```
