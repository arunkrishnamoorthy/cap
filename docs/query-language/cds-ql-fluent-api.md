CAP provides us with two options to query data: 
1. Fluent API like CDS Query - cds.ql 
2. Querying API provided by cds.service. 

In this section, we are going to discuss about the CDS Query, fluent like API. 

# CDS Query Language - Fluent API 

`cds.ql` is used to construct queries using a fluent, SQL like API. Together with the `tagged template strings` cap creates a sweeping embedded CQL experience. 

Syntax: 
```sql
// cds ql - Fluent API
const query = SELECT.from('Entity'); // using global constants 

--> To local variables. 
const { SELECT, INSERT } = cds.ql;


const query = SELECT.from('Entity'); 
```

### Comparision betweent the following Query
1. Fluent API 
2. Service API's 
3. Service API's + Fluent API 
4. Tagged Template String
5. Reflected Defintions as Query Target 

Select Statement: 

```sql
// Condition can be written as JSON key value pair. 
e.g { BookId: 201 }

// Fluent API  - CQL - Condition is a JSON object
const query = SELECT.from('Entity').where(condition);
const query = SELECT.from('Books').where({ ID: 201});

// Service API 
const query = cds.read('Entity',FilterValue); // Filter with key. 
const query = cds.read('Books',201);

// Service + Fluent API
const query = cds.read('Entity').where(condition); 
const query = cds.read('Books').where({ID: 201});

// Tagged template string 
const query = SELECT.from `Entity` .where `condition`;
const query = SELECT.from `Books` .where `ID=${201}`;

const query = SELECT `from Entity where ${values}`;  // A variant like this is also possible
const query = SELECT `from Books where ID = ${'201'}`;

// Reflected definition as query target. 
const { Entity } = cds.entities;
const query = SELECT.from(Entity).where(condition);

const {Books} = cds.entities;
const query = SELECT.from(Books).where({ID:202});
const query = SELECT.from(Books).where `ID=${202}`;


```

Insert Statement: 

```sql 
-- Dataset can be one object or muliple record pass an array 

// Fluent API 
const query = INSERT.into('Entity').entries(dataset);
const query = INSSER.into('Books').entiries({ ID: 202, Title: 'Dummies for Developers'});

// Service API 
const query = cds.create('Entity', dataset);
const query = cds.create('Books',{ ID: 202, Title: 'Dummies for Developers'});

// Service + Fluent API
const query = cds.create('Entity').entries(dataset);
const query = cds.create('Books').entries({ID: 202, Title:'Dummies for Developers'});

// Tagged template String 
const query = INSERT.into `Entity` .entries(values)
const query = INSERT.into `Books` .entries({ ID: 202, Title: 'Dummies for Developers'});

// Reflected defintion as Query Target. 
const { Entity } = cds.entities;
const query = INSERT.into(Entity).entries(values);

const { Books } = cds.entities;
const query = INSERT.into(Books).entries({ ID: 202, Title: 'Dummies for Developers' });
const query = INSERT.into (Books) .entries({ ID: 202, Title: 'Dummies for Developers' });

```

Update Statement: 

```sql
-- Value of the record to be updated is passed as an JSON object

// Fluent API 
const query = UPDATE('Entity').where(condition).with(Values);
const query = UPDATE('Books').where({ID: 201}).with({Title: 'Dummies for Developers-Revised Edition'});

// Service API
const query = cds.update('Entity',Key,Values);
const query = cds.update('Books',201, {Title:'Dummies for Developers-revised edition'});

// Service + Fluent API
const query = cds.update('Entity').where(condition).with(values);
const query = cds.update('Books').where({ ID: 201}).with({ Title: 'Dummies for Developers-Revised Editions'});

// Tagged template String
const query = UPDATE `Entity` .where `condition` .with `values`;
const query = UPDATE `Books` .where `ID=${201}`. with `Title: ${'Dummies for Developers-revised edition'}`

// Reflected Defintion as Query Targets 
const { Entity } = cds.entities;
const query = UPDATE (Entity). where(Condition);

const { Books } = cds.entities;
const query = UPDATE (Books) .where({ ID: 202 });
const query = UPDATE (Books) .where `ID = ${'202'}`;

```

Delete Statement:
```sql
// Fluent API 
const query = DELETE.from('Entity').where(expression);
const query = DELETE.from('Books').where({ID:201});

// Service API 
const query = cds.delete('Entity',ID);
const query = cds.delete('Books',201);

// Service + Fluent API 
const query = cds.delete('Entity').where(expression);
const query = cds.delete('Books').where({ID: 201});

// Tagged template string 
const query = DELETE `Entity` .where `expression`;
const query = DELETE `Books` .where `ID=${201}`;

// Reflected Definition as Query Targets 
const { Entity } = cds.entities;
const query = DELETE (Entity) .where(condition);

const { Books } = cds.entities;
const query = DELETE (Books).where({ ID: 202});
const query = DELETE (Books) .where `ID = ${'202'}`;

```

