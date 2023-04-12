# Reference and Primitive Types

### Primitive Types:

In javascript, the numbers, strings and boolean are primitive types. Which means when you assign the value of variable into another variable, they are actually copied. The concept of call by value is used here.

For example.

```javascript
var a = 10;
var b = a;
console.log(a);
console.log(b);

// now if you reassign the value of b and print a and b.
b = 20;
console.log(a);
console.log(b);

// the value of a will still be 10 and b will be 20, because the variable is copied, a and b still holds different memory
// and change in b only affect b, but not a.
```

### Reference Data types

In javascript, the objects and array are reference data types. Which means they uses the fundamental call by reference.
If you copy data to another object or array, the change in one object/array will reflect on the another.

For Example:

```javascript
var oPerson = { name: "Arun", age: 20, gender: "Male" };

// assign the oPerson object to a new object.
var oNewPerson = oPerson;

// change the name of the new person.
oNewPerson.name = "Krishnamoorthy";

console.log(oPerson.name);
console.log(oNewPerson.name);
```

In this example, we assigned the person object oPerson to a new object oNewPerson. After assigning the value, i modified the name property in the oNewPerson Object. What this did is, since it is a reference type, the name change also update on the original oPerson object and when you log it in console both the print reads "Krishnamoorthy". Hence when working with object or array in react we need to make sure the references are not updated everywhere and handled correctly.
