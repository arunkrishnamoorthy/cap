# SELECT Statement in CQL

### SELECT:

Select is a function which takes input as columns. The following both statements are equivalent.
```sql
SELECT `a,b,c` from `Foo`;
SELECT .columns `a,b,c` from `Foo`;
```

### One 

Equivalent to select single statement in ABAP, to get one single record. 

```sql
SELECT.one from `Foo`;
```
