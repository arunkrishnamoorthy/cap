# Entity and Types

### Entity 

Entity is a structured type with named and typed element, representing data set that can be read and manipulated using the CRUD operation in the service.
Entity usually has one or more key fields. 

To define an entity, use the keword ```define entity```. 

**Example**

```
define entity Book {
  key ID: CUID;
  Title: String;
  Author: String;
} 
```

Or you can use the following since the define is optional keyword.

```
entity Book {
  key ID: CUID;
  Title: String;
  Author: String;
} 
```

This statement defines an entity called Book with the properties ID, Title and Author. 

Refer to the [Built in Data Types](built-in-data-type.md) to know more about the CAP predefined data types. 
Alternatively you can also create your own types. 

### Type 

We can create custom types in the application for the reusability.  To create the custom type use the keyword ``` define type ```.
Define is optional keyword and can be used with or without it. 

**Example**

```
define type Material: String(40);
```
This is equivalent to creating a Domain in the SAP Server which holds the value for single component. 

Custom Defined types can also be dervied from Structures and associations.

**Example**


Deriving custom data types from association. 

```
define type Currency: Association to Currencies;
```

Deriving custom data type from Structure.

```
define type Amount {
  value: Decimal(16,3);
  currency: Currency;
}
```

You can relate this to the Structure declaration in ABAP and specifying reference Currency Field for the Components.

#### Structured Type

The Type Amount declared above is an example of a Structured Type. you can use it in the entity. 

``` 
type Currency: Association to Currencies;

type Amount {
  value: Decimal(16,3);
  currency: Currency;
}

entity Book {
  key ID: CUID;
      Title: String(100);
      Author: String(40);
      Price: Amount;
}
```

Here we use the structured type Amount as a reference to the Price property. So now we have Price.value which represent the value and Price.currency which represent currency of that amount.  You can relate this to adding nested structure in ABAP Programming. 

Rather than explicitly defining the type, we can also declare elements using inline syntax. 

```
entity Book {
  key ID: CUID;
      Title: String(100);
      Author: String(40);
      Price: {
        value: Decimal(16,3),
        currency: Currency
      }
}
```

#### Arrayed Type

A type specification ``` array of ``` or ``` many ``` is used to decalare arrayed types. With arrayed type a element can hold more than one values. 

Following are some examples of arrayed type. 

```
entity Book {
  key ID: CUID;
      Authors: many String;
}
``` 
This creates a deep structure with Authors as an Array holding multiple string values. 
You can relate this to ABAP declaration specified below, where at the declaration level you specify the multiplicity of element. 

```
data: lt_authors type table of string.
```

**More Examples** 

```
type EmailAddress {
  kind: String;
  address: String;
}

entity Book {
  key ID: CUID;
      Authors: many String;
      Emails: many EmailAddress;
}
```

you can relate this to the following ABAP statments if you are abap developer. 

``` 
  types: begin of EmailAddress,
          kind type string,
          address type string,
         end of EmailAddress. 
  data: lt_emails type table of EmailAddress.
```

You can also specify this in an alternate way, rather than specifying the multiplicity in the Enitity level, we can declare the multiplicity at type level.

```
type EmailAddress {
  kind: String;
  address: String;
}

type EmailAddressTable : many EmailAddress;

entity Book {
  key ID: CUID;
      Authors: many String;
      Emails: EmailAddressTable;
}
```

In ABAP you can relate this to following statements. 

```
types: begin of EmailAddress,
          kind type string,
          address type string,
         end of EmailAddress. 
types: EmailAddressTable type table of EmailAddress.
data: lt_emails type EmailAddressTable.
```

So you get the Idea, you can use the inline declaration of Elements as well. 


```
type EmailAddressTable : many { kind: String, address: String };

entity Book {
  key ID: CUID;
      Authors: many String;
      Emails: EmailAddressTable;
}
```

> While deploying the service, In the OData V4, the Array typed structures are referenced as a Collections. 

**Null Values** 

By default, all the elements specified in the array type is not null, you can specify them explicity using the keywords null and not null. 









