# Class, Properties and Method

In the ECMASCIPT2015 also known as ES6, classes are introduced in the javascript. We can now directly create classes instead of creating the constructor function using the keyword `class`.

Following is the syntax for the class in ES6.

```javascript
class ClassName {
  constructor() {
    // Add instance specific properties and methods here.
  }
}
```

In traditional javascript we create objects using the constructor function as below.

```javascript
function Person() {
  this.name = "";
  this.age = 0;
  this.gender = "";
  this.calculateRetirementAge = function () {
    return 60 - this.age;
  };
}
var oPerson = new Person();
```

In the above contructor function we have initialized three properties named "name","age" and "gender". There is also a method name "calculateRetirementAge". For each object we create through this constructor function has these properties and methods assigned.

In the ES6 version, we use the class keyword to implement the Javascript class. The same example we have above can be re-written as follows.

> In ES6 version, it is mandatory to have the constructor method.

```javascript
class Person {
  constructor() {
    this.name = "";
    this.age = 0;
    this.gender = "";
  }

  calculateRetirementAge() {
    return 60 - this.age;
  }
}

var oPerson = new Person();
oPerson.calculateRetirementAge();
```

The same can be re-written in the ES7 version as follows. In this version, the constructor is not mandatory and can be skipped.
Also you can use the javascript arrow functions to define the methods. By using the Arrow function we will not have the usual problem of the this keyword.

```javascript
class Person {
  name = "";
  age = "";
  gender = "";
  calculateRetirementAge = () => {
    return 60 - this.age;
  };
}
```

### References

https://www.w3schools.com/js/js_classes.asp

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes
