# Add Data Model and Service Definition - My Bookshop Project

#### Prequisites
  [Namespaces](namespaces.md)

When [Defining the service](define-service-my-bookshop.md), we get started quickly and we added all the entity in service definition(CatalogService). But in real time situation 
building a bigger project we might have to normalize your entity in different view and have the service expose the entity. 

In the folder ```db``` create a new file called ```BookModel.cds``` and copy the entity definition to the Book Model. The Book model is only going to have
the entity definition and not the CatalogService definition as we did earlier. 

```
namespace mybookshop.db.bookmodel;

using { Country,managed } from '@sap/cds/common';

entity Books {
    key ID     : Integer;
        title  : localized String;
        author : Association to Authors;
        stock  : Integer;
}

entity Authors {
    key ID    : Integer;
        name  : String;
        books : Association to many Books
                    on books.author = $self;
}

entity Orders {
    key ID      : Integer;
        book    : Association to Books;
        country : Country;
        amount  : Integer;
}

```

> It is important that the namespace declared uses small letters and no capital letters. 


In Addition to the entity definitions, a namespace is added as an identifier to access this Entity model later on. 
Save the file. 


As a next step, we need to modify the service.cds file which contains the service definition. Earlier we declared the entities right under the service
definition. now we are going to replace that code with mapping the entity from the BookModel.cds. 

To do that first we need to import the BookModel.cds into the Service.cds file. 

```
using mybookshop.db.bookmodel as BookModel from '../db/BookModel.cds';

service CatalogService {
  
}
```

Expose the entity from the BookModel to the service.cds file.

```
using mybookshop.db.bookmodel as BookModel from '../db/BookModel.cds';

service CatalogService {
    entity Books @readonly as projection on BookModel.Books;
    entity Authors @readonly as projection on BookModel.Authors;
    entity Orders @readonly as projection on BookModel.Orders;
}
```

If the CDS Watch is still running, you can see the result in the localhost server. Else use the comand in the terminal ```cds watch``` or ```cds serve```
to run the service. 







