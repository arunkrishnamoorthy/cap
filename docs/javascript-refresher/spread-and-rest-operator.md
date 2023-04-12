# Spread and Rest Operator

Spread and Rest operator uses the same syntax and is represented using three dots. ( ... )

### Spread

Spread Opertor is used to split up array elements or object properties.

#### Array

Let us assume we have an array for numbers as follows.

```javascript
var aNumbers = [1, 2, 3, 4, 5];
```

We have defined a numbers array which has 5 elements. Now using the spread operator we can copy the elements of the array into the new array.

```javascript
var aNumbers = [1, 2, 3, 4, 5];
var aNewArray = [...aNumbers];
```

The above will copy all the elements of the array aNumbers into the new array aNewArray. also after copying the array we can also insert new elements into the array.

```javascript
var aNumbers = [1, 2, 3, 4, 5];
var aNewArray = [...aNumbers, 6, 7];
```

In the above code, we copied all the elements of the array from aNumbers and then additionally inserted elements 6 and 7.

#### Objects

In the Objects, the spread operator can be used to split the object properties.

For example, lets say we have created an object called person with the following properties.

```javascript
var oPerson = {
  name: "Arun",
  age: 35,
  gender: "Male",
};
```

Now to copy the object into a new object we can use the spread operators.

```javascript
var oPerson = {
  name: "Arun",
  age: 35,
  gender: "Male",
};

var oNewPerson = { ...oPerson };
```

The above syntax copies the object oPerson into the new object oNewPerson.

We can also overwrite the existing properties values as well as create a new propties after coping the object.

```javascript
var oPerson = {
  name: "Arun",
  age: 35,
  gender: "Male",
};

var oNewPerson = { ...oPerson, age: 36, city: "Bangalore" };
```

In the above code, after copying the oPerson object, we have overwritten the age property and also added a new property city.

### REST Operator

The spread and the rest operator uses the same syntax three dots ( ... ). It depends on the place that you use whether the compiler does the rest or spread operator.

While using the operator in the function argument it acts as rest operator.

Let us say we have the function as follows.

```javascript
function dispalyEvenNumbers(a, b, c) {
  var aEvenNumbers = [];
  if (a % 2 === 0) {
    aEvenNumbers.push(a);
  }
  if (b % 2 === 0) {
    aEvenNumbers.push(b);
  }
  if (c % 2 === 0) {
    aEvenNumbers.push(c);
  }
}

// returns [2]
dispalyEvenNumbers(1, 2, 3);
```

In the above function, dispalyEvenNumbers we have a static list of parameters a,b, and c. which means using this function you can only check upto 3 numbers at a time. Lets say the no of numbers we need to count is dynamic and we cannot define it statically, we can use the rest operator in the function to accept as many as arguments as you like.

```javascript
function dispalyEvenNumbers(...aNumbers) {
  return aNumbers.filter((number) => number % 2 === 0);
}

// two parameters - output returns [2]
dispalyEvenNumbers(1, 2);

// adding 5 numbers - output returns [2,4]
dispalyEvenNumbers(1, 2, 3, 4, 5);
```

what the compiler does is copy the arguments into the array and pass it to the function arguments. The function argument aNumbers defined above will be an array with two elements in the first call and five elements in the second call.

If you execute the code above, the first call should return the output as 2 and the second call should return elements 2 and 4.
