# Destructuring

In the new generation of javascript, just like the spread and rest operator we have a new operator called destructuring.

Destructuring allows to easily extract array of elements, or object properties and store them in the variables.
Do not confuse this with spread operator, in the spread operator we copy the elements of the array into another array or copy the properties of object into another object. In case of destructuring we split array or objects into variables.

```javascript
let aNumbers = [10, 20];
[a, b] = aNumbers;
```

It may look like we are copying the array aNumbers, but we are not. What the above statement does is it copy the first element of the array, ie. 10 and create a variable and assign it to `a` and copy the second element of the array ie. 20 to the variable `b`.

To destructure the objects, use the name of the properties to split out the properties of the objects.

```javascript
let oPerson = {
  name: "Arun",
  age: 20,
  gender: "male",
};

[name, age] = oPerson;
```
