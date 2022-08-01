# Aspect

### Aspect Oriented Programming Language 

Aspect oriented programming, is a technique for building common,reusable routines that can be applied application wide. 

### Aspect

<b>CDS Aspect</b> is based on the mixin approach named as Aspect oriented programming and allow us to flexibily define new elements and extend existing ones with new elements, and overriding properties and annotation. 

- Define Aspect 
- Extend Directive 
- Short Syntax 

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

#### Extend Directive 

The ```extend``` keyword is used to add new fields to the entity or overwrite the properties / annotations of the existing field. 

Let us assume we have an entity "foo" with an existing field and annotation for title. 

```
entity foo with @title: 'Foo' {
   existingField: String;
}
```

To add a new field to the entity. 

```
extend foo with @title: 'Foo' {
  newField: String;
}
```

So, to the existing entity Foo, we have added a new field. 

Now, lets say the entity i have is using an aspect managedObject to extend fields to the entity "Foo". If i wanted to overwrite the properties, the we specify the syntax as following. 

```
entity foo with @title: 'Foo' 
  extend foo with managedObject  
{
  existingField: String;
}
```

To extend the field from the Aspect, use the following syntax. 

```
  entity foo with @title: 'Foo' {
    extend managedObject {
      // New Field
      newField: String; 
      
      // Overwrite existing properties
      extend created @title 'Created Date and Time'
    }
  }
```

This can be shortly represented for single fields as:

```
  extend foo: managedObject with { newField: String }
```

For more details on the usage, refer to short syntax section. 

**Short Syntax**

Instead of declaring the extend keyword everytime to extend the aspect, we can use the short syntax ```:``` to represent the extension. 

Let's assume we have entity with the name "Foo" and has properties "Key" and "Name" defined as below. 
```
define foo with @title: 'Foo' {
  Key: CUID,
  Name: String
}
```

Now to add the properties of the managedObject aspect, we modify the syntax as below. 

```
  define entity Foo {}
  extend foo with managedObject;
  extend foo with {
    Key: CUID;
    Name: String;
  }
```

Here we declare an entity Foo which is initially empty and then added properties to it with Aspect "managedObject" and properties "Key" and "Name".
Now if there are going to be more aspect from which we are going to inherit properties then the syntax definition grow as this. 

``` 
define Foo {} 
  extend Foo with managedObject;
  extend Foo with someObject; 
  extend Foo with dummyObject; 
  extend Foo with {
    Key: CUID;
    Name: String;
  }
```

Now rather than listing all the aspects that are used in the extension, they can be simplied by the use of ```:``` in the syntax representation. 

The new short representation will looks like below. 

```
  define foo : managedObject, someObject, dummyObject {
    Key: CUID;
    Name: String;
  }
 ```

> From the short syntax representation, it looks like a multiple inheritance where the entity foo, inherits the properties from the managedObject, someObject and dummyObject. While this isn't exactly inheritance, rather based on the concept of mixins. 


For more information, refer help links for [Extend Directive](extend-directive.md) and [Annotate Directive](annotate-directive.md).

