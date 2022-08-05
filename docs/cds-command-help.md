# CDS Command Reference 

To list the commands or to get help on the commands supported in the CAP CDS, execute the following command in the terminal. 

```
cds
``` 

or 

```
cds help
```

The Usage of command cds is an alias for cds help. 


### CDS Command Usage 

Following is the syntax of CDS Command. 

``` 
cds <command> [<args>]
```

(command) - specify the commands to be executed by the CDS Runtime.

(arg)     - Pass the arguments required to execute the specified command. 

### List of CDS Commands

| Command | Short syntax | Usage |  Description |
| --- | --- |--- | --- |
| init  | i | ``` cds init ```  | Initialize / Jumpstart CDS Based Projects  |
| add   | a | ``` cds add ```   | Add a feature to an existing project |
| bind  | y | ``` cds bind ```  | Bind a service to a Hana Instance |
| import | m | ``` cds import ``` | add models from external sources |
| parse | p | ``` cds parse ``` | Parse given CDS Models |
| serve | s | ``` cds serve ``` | Run your services in local server |
| watch | w | ``` cds watch ``` | Run and Restart on file changes |
| repl  | r | ``` cds repl  ``` | Read eval event loop |
| env   | e | ``` cds evn ``` | Inspect effective configuration |
| build | b | ``` cds build ``` | Prepare for deployment |
| deploy | d | ``` cds deploy ``` | Deploy to database or cloud |
| login | l | ``` cds login ``` | Login to extendible SaaS application |
| extend | x  | ``` cds extend ```  | Create an extension project from SaaS Application |
| lint | t | ``` cds lint```  | Run linter for env or model checks |
| version | v | ``` cds version```| Get detailed version information |
| help | ? | ``` cds help ``` | Get detailed usage information | 

To learn more about the usage of the specified command, run the following command in the terminal 

``` 
cds help <command> 
or 
cds <command> --help
```


