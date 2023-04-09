# Debugging a CAP Application. 

To debug the CAP application, first a launch.json file needs to be created in the workspace directory of the business application studio. 

To create the launch.json file, in the left toolbar panel, go to the Debug Perspective. 

<img src="assets/images/create-launch-json.png" width="300" />

Select the option as Node Js and you can see the launch.json file created with some javascript configuration. 

<img src="assets/images/launch-node-js.png" width="600" />

You can find this file later in your workspace directory. 

<img src="assets/images/launch-workspace.png" width="300" />

Maintain the configuration as below in the launch.json File. 

```json
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "command": "cds watch --profile hybrid",
            "name": "Debug: Exercise2",
            "request": "launch",
            "type": "node-terminal",
            "cwd": "${workspaceFolder}//exercise2"
        }
    ]
}
```

### Explanation:
In the configuration array, you create an object entry to maintain a debugging settings for a specific application. 
1. Command: The command line, to execute the CAP project. Starting the debugger will use this command to run the CAP application. 
2. name: Identifier for debugging configuration. 
3. cwd: Current working directory, here you specify the path to the CAP project, from the current working directory.
The variable workspaceFolder, gives you the location of the current workspace directory and you can specfiy the path from there. 

To start the debugging, Place the breakpoint of the function you want to debug. Then go to the debug perspective and choose the debug configuration you have created and click on run. 

<img src="assets/images/debug-configuration-select.png" width="300" />

You can see the debugger started. 

<img src="assets/images/debugger-started.png" width="500" />

Go to the .http test file and run the payload you wanted to test and you can see the breakpoint in the service. 

<img src="assets/images/debug-test-http.png" width="500" />

You can see the debug breakpoint triggered. 

<img src="assets/images/debug-bp-triggered.png" width="500" />

The shortcuts are similar to the Chrome debugging tools. 

In debug console, You can view the contents of the variable, by placing the cursor on top of the variables, or by entering the variable in the command box in the bottom.

<img src="assets/images/debug-content.png" width="500" />

