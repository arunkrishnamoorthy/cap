# LET and CONST Keyword

`LET` and `CONST` are the different ways of creating variables similar to the `var` keyword which we use traditionally to create variables in `Javascript`.

Before `ES6`, we traditionally use the `var` keyword to create the variables in the javascript.
In the version of `ES6` a new set of variables are introduced namely `LET` and `CONST` and is recommened to use.

<!-- tabs:start -->

#### **Blog**

### LET

It is safe to say that `LET` is the new `VAR` keyword. The variables that are created using the `LET` keyword is dynamic and the value can be reassigned
anytime within the scope. The let keyword solves one of the biggest problem with the var keyword. Using var keyword i can declare a variable 'n' no of times using the same name.

For example.

```javascript
var myName = "Arun";
var myName = "Krishnamoorthy";
var myName = "Dummy Dusker";
```

I can create 'n' no of variables and they gets overwritten. When you do the same with the let keyword.

```javascript
let myName = "Arun";
let myName = "Krishnamoorthy";
```

When you execute this code, the compiler will give you the error the variable is already defined in the scope.

### CONST

`CONST` is a keyword that is used to declare variables that are static. That means, the value once assigned to the variable created using `CONST` cannot
be re-assigned later in the program.

Throughout the course of these react-fundamentals we will be using these two keys for declaring the variables.

### Example

> To practice the code below, go to the website: https://jsbin.com/?js,console. This particular link i shared should show you the windows Javascript editor and Console. You can type your code in the javascript editor and click on the button "Run" in the console to execute the code and see the result.

Let us declare the variable using the traditional var keyword and write the variable value to the console.

```javascript
var myName = "Arun";
console.log(myName);
```

If you run this code, in the console you should be able to see the result logged as "Arun".

Instead of the `var` keyword now let us use the `let` keyword to declare the variables. replace the code as below.

```javascript
let myName = "Arun";
console.log(myName);
```

If you run this code, the result is still going to be the same.

Let us try to assign some new value to the variable "myName".

```javascript
let myName = "Arun";
myName = "Krishnamoorthy";
console.log(myName);
```

If you run this code, the console will show the value as Krishnamoorthy as we have replaced the value of the variable.

Let us try the same with `const` keyword. Let us declare a variable.

```javascript
const myName = "Arun";
console.log(myName);
```

If you run this code, you will see the output for this variable as "Arun". Now try to reassign the value to this variable.

```javascript
const myName = "Arun";
myName = "Krishnamoorthy";
console.log(myName);
```

Now when you execute this code you should be seeing an error in the console.

TypeError: Assignment to constant variable.

That is because, the variables declared as const cannot take another value after being initialized.

#### **Video**

<iframe width="860" height="660" src="https://www.youtube.com/embed/9WIJQDvt4Us" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<!-- tabs:end -->
