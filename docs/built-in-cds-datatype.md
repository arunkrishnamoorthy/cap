# Built-in CAP CDS Data Type and Mapping

Following are the built-in data types in CAP CDS.

| CDS Type  | Sql Type  | Arguments | Remarks | Example Value |
| :--- |  :--- |  :--- |  :--- |  :--- |
| UUID  | NVARCHAR(36)  | | An Opaque 36 Character String | 'be071623-8699-4106-b6fa-8e3cb04c261e'  |
| Boolean | BOOLEAN |  |  | true / false  |
| Integer | INTEGER |  |  | 300 |
| Integer64 | BIGINT  | | | 3434343434 |
| Decimal | Decimal | precision,scale | specify length and decimal points | 10.03 |
| Double  | DOUBLE  |  |  | 10.3  |
| Date  | DATE  | | Date Value  | '2022-07-31'  |
| Time  | TIME  | | Time  | '07:59:59'  |
| DateTime  | TIMESTAMP | | Precision upto sec  | '2022-07-31T07:59:59Z'  |
| Timestamp | TIMESTAMP | | Precision upto micro sec  |  '2021-06-27T14:52:23.123Z' |
| String  | NVARCHAR | length |   | 'hello world' |
| Binary  | VARBINARY | length  | | |
| LargeBinary | BLOB  | | | |
| LargeString | NCLOB | | | |


# Mapping CDS Data Type to OData Data type

The following illustrates how the CDS Built in data types are mapped to the OData Service. 

| CDS Data Type |  OData V2 | OData V4 |
| :---  |:---  |  :---  | 
| UUID  | Edm.Guid  | Edm.Guid  |
| Boolean | Edm.Boolean | Edm.Boolean |
| Integer | Edm.Int32 | Edm.Int32 |
| Integer64 | Edm.Int64 | Edm.Int64 |
| Decimal | Edm.Decimal | Edm.Decimal |
| Double  | Edm.Double  | Edm.Double  |
| Date  | Edm.DateTime with sap:display-format="Date"  | Edm.Date  |
| Time  | Edm.Time | Edm.TimeOfDay |
| DateTime  | Edm.DateTime  | Edm.DateTimeOffset  |
| Timestamp | Edm.DateTime  | Edm.DateTimeOffset  |
| String  | Edm.String  | Edm.String  |
| Binary  | Edm.Binary  | Edm.Binary  |
| LargeBinary | Edm.Binary  | Edm.Binary  |
| LargeString | Edm.String  | Edm.String  |
