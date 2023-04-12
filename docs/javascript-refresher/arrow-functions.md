# Arrow Functions

An Arrow function expression is an alternative to Traditional functional expression.

_Functional Expression_

```javascript
function functionName(arguments) {
  // code block
}
```

_Arrow Function_

```javascript
const functionName = (arguments) => {
  // code block
};
```

Different variants of Arrow function compared to functional expression.

Lets take a simple function with one argument and re-write them in different versions of arrow function.

```javascript
// Functional Expression
    function(a){
        return a + 100;
    }

// Arrow Function
    (a) => {
        return a + 100;
    }

// when it is only a single return statement the function can be shortened further
// the word return is implied when you remove the braces.
    (a) =>  a + 100;

// when there is only one import parameter the parantheisis wrapping the arguments can be removed
    a => a + 100;
```

When there are multiple arguments, then the arguments needs to be wrapped in parantheisis.

#### Limitiation of Arrow function:

- Arrow functions don't have their own bindings to this, arguments or super, and should not be used as methods.
- Arrow functions don't have access to the new.target keyword.
- Arrow functions aren't suitable for call, apply and bind methods, which generally rely on establishing a scope.
- Arrow functions cannot be used as constructors.
- Arrow functions cannot use yield, within its body.
