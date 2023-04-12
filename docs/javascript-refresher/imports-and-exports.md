# Exports and Imports

When you build an complex application it is important to modularize the application by splitting the functionality into smaller units
called 'module' for the sake of readability and maintainability of code.

### Export

In ES6, each module defined exports a function that can be imported where it is required and used.

export is the keyword used to export the variables, objects, function or class. Let say i have created a file name Device.js.

```javascript
var devicetype = {
    mobile: "mobile",
    tablet: "tablet",
    desktop: "desktop"
}

function getDeviceType(){
    return deviceType;
}

export default getDeviceType;
export const devicetype;
```

In the above code, i have declared an object and an function. The module can export only one default object/function.
all other export has to be either declared as var, function, class or constant.

I am exporting the `getDeviceType` as a default function and exported the object as constant. These module can be imported
in the application.

### Import

To import the function/object exported from the module use the keyword import.

```javascript
import * from filepath;
```

The objects can be imported from the Device.js file using the following import options.
Import all the objects and function from the device.js. While importing all the objects an alias has to be provided.

```javascript
import * as Device from "Device.js";
```

Using the alias `Device` the object `devicetype` as `Device.devicetype` and the function `getDeviceType` as
`Device.getDeviceType`.

Let say i do not want to import all the functions and i only need to import what i am going to use, then use the
following syntax to specifically import the required functions. While importing the export that is marked as `default`
any name can be used to import that function, but it is advised to use the same name as the export default in the import function.

**Example**

```javascript
// recommended approach
import getDeviceType from "Device.js";

// the following import the getDeviceType as well since getDeviceType is the default export.
// the getDeviceType is imported into dummy.
import dummy from "Device.js";
```

If i wanted to export the functions/objects that are not default, the exact name as specified in the export has to be used.

**Example**

```javascript

import devicetype from 'Device.js';

// imported with an alias name
import devicetype as DeviceType from 'Device.js';
```

Assume there are more functions and objects in the module then what we have in the code here. then to import only specific function you can use the following syntax instead of importing one by one.

```javascript
import { getDeviceType, devicetype } from "Device.js";
```

#### Reference Links

https://developer.mozilla.org/en-US/docs/web/javascript/reference/statements/export
