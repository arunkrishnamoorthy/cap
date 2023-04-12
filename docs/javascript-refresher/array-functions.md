# Array Functions.

Some of the common functions that we use in the array are as follows. All the array functions takes the callback function as the arguments and each row of the array is passed as an input parameter in the callback function which we implement depending on the array method used.

In this examples i will

### Map

Map is an array function, that is used to transform the values of the array. This loops the array, row by row and the modified value is update back in the array.

```javascript
const aNumbers = [1, 2, 3];

// Now lets say I want to double each element of the array.
// Callback using function expression.
aNumbers.map(function (number) {
  return number * 2;
});

// Callback using the arrow function
aNumbers.map((number) => number * 2);
```

### Filter

Filter function is used to filter the data from the array.

Let say i have an array that has the following values.

```javascript
var aPersons = [
  { id: 1001, name: "Arun", jobTitle: "Developer" },
  { id: 1002, name: "Ayyappan", jobTitle: "Consultant" },
  { id: 1003, name: "Vinoth", jobTitle: "Developer" },
  { id: 1004, name: "Sabari", jobTitle: "Manager" },
];
// lets Filter the persons with the jobtitle developer

// Function expression
aPersons.filter(function (oPerson) {
  return oPerson.jobTitle === "Developer";
});

// Arrow function.
aPersons.filter((oPerson) => {
  return oPerson.jobTitle === "Developer";
});
```

### For Each

Loop through every record of the array.

```javascript
var aPersons = [
  { id: 1001, name: "Arun", jobTitle: "Developer" },
  { id: 1002, name: "Ayyappan", jobTitle: "Consultant" },
  { id: 1003, name: "Vinoth", jobTitle: "Developer" },
  { id: 1004, name: "Sabari", jobTitle: "Manager" },
];

// Function Expression
aPersons.forEach(function (oPerson) {
  console.log(oPerson);
});

// Arrow function
aPerson.forEach((oPerson) => console.log(oPerson));
```
