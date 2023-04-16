# Query Language

CDS Query Language, shortly referred as CQL, is based on the Standard SQL Syntax. It enhances the Standard SQL by
1. Postfix Projections 
2. Smart Selector 
3. Path Expressions 
4. Casts in CDL
5. Association Defintions

### Postfix projections

Postfix projection in SQL means, the CQL allow us to specify the projected/selected fields behind the from clause, or after the from clause in a curly braces. the following two syntax are equivalent. 

```sql
    SELECT name, address.city from Authors
    SELECT from Authors { name, address.city }
```

### Smart Selector 

#### `*` Operator

In the CQL with postfix projection, the * operator is handled slightly different compared to the normal SQL. 

**Normal SQL:**

```sql
    /* Assume book has fields, ID, Title, Description, Author.Name, Author.City */
    SELECT * from BOOK /* This query brings all the fields from the book */ 

    /* Adding fields with alias to certain selected fields. */ 
    SELECT *, Author.City as City from BOOK  /* This would result in duplicate elements, as the field City is fetched twice, one during * and once specfied in projection. This query would obivously fail. */
```

**CQL Query** 

The postfix projection of CQL query, handle this differently. 

```sql
    SELECT from BOOK {*, Author.City as City}
    /* We are repeating the same duplication of fields here, What CQL does differently here is
    after * explicitly defined columns are replace the equally named column that was inferred before with * . /* 
```

#### Exluding Clause 

Excluding clause is a combination of Select * with excluding certain fields from the projection. 

```sql
    /* fetches all the fields excluding author */
    SELECT * from BOOKS excluding { author }
```

This effect is about `late materialization` of signature and being open for extension. 

```sql

    entity Foo { foo: String; bar: String; car: String }
    entity Bar as SELECT from Foo excluding { bar }
    entity Boo as SELECT from Foo { foo, bar}

    /* Query on Bar and Boo will return the following */ 
    SELECT * from Bar --> { foo, car }
    SELECT * from Boo --> { foo, bar }

    /* You can also extend the entity */
    extend Foo with { boo: String }
    /* Query on Foo will now return foo, bar, car, boo */ 

```

#### Path Expression 



