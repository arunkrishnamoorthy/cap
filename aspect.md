# Aspect

### Aspect Oriented Programming Language 

Aspect oriented programming, is a technique for building common,reusable routines that can be applied application wide. 

### Aspect

<b>CDS Aspect</b> is based on the mixin approach named as Aspect oriented programming and allow us to flexibily define new elements and extend existing ones with new elements, and overriding properties and annotation. 

- Define Aspect 
- Extend Directive 
- Short Syntax 
- Inheritance 
- Views and Projection 

### Define Aspect

To define an aspect, the key word ``` define aspect ``` is used by specifying the name of the aspect. The Keyword define is optional and the keyword aspect can be used without define keyword to define an aspect. 

```
define aspect <aspect_name> {
  // list of properties 
}
```

alternatively you can also use. 

```
aspect <aspect_name> {
  // list of properties 
}
```

**Example**

```
define aspect managedObject {
  created { at: Timestamp, _by: User }
}
```
So what this does is create an aspect named "managedObject" and aspect has the nested structure "created" which has properties, at and by. 
Assume this is similar to reusable nested structure as you declare in an ABAP.

For information about the data types used such as Timestamp and User, refer to the [Built-in Data types](built-in-cds-datatype.md)

To use the aspect, you can use either the keyword ```extend``` or ```annotate```.  The named extension can be anything either ```types``` or ``` entity ``` where the CDS Aspect can be used. 

**Extend**

If you use the ```extend``` keyword to the named aspect, what it means is your are adding the nested properties of the Aspect as an extension to the target. 

For example, let us assume, we have an entity named "foo", and i would have to add properties from the Aspect "managedObject" we declared about to the entity foo, then we use the following syntax. 

```
  extend foo with managedObject; 
```

This adds the nested property "created" from the managedObject aspect to the entity foo as an extension. 

**Annotate**

If you use the ```annotate```  keyword to named aspect, then the nested fields are interpreted as the existing fields of the entity, and annotations are copied over to the corresponding target elements. 

```
annotate foo with managedObject;
```


