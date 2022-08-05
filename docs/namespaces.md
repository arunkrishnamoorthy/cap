# Namespaces 

>**Definition**
>A namespace is a declarative region that provides a scope to the identifiers (the names of types, functions, variables, etc) inside it. Namespaces are used to organize code into logical groups and to prevent name collisions that can occur especially when your code base includes multiple libraries.

### Declaration

To prefix the name of all definition we make in the program, we delcare a namespace which act as a top level element. 

For example, if i have to delcare two cds views, Books and Authors, then i can have the namespace declared which logically group them and act as identifier.

```
  namespace my.bookshop;
  
  entity Book {   // path -> my.bookshop.Book
    key ID: Integer;
        Title: String(40);
  }
 ```
 
 another entity view for Author. 
 
 ```
  namespace my.bookshop;
  
  entity Author {   // path-> my.bookshop.Author
    key ID: Integer;
        Name: String(40);
  }
  ```
  
  Here my.bookshop acts as a common idenitifier path. 
  
  **Scoped Definition** 
  
  You can declare names for types and entity referring to other definition names as prefix. 
  
  ```
    namespace foo.bar; 
    
    entity Foo {};    // namespace -> foo.bar.Foo
    entity Foo.Bar {} // namespace -> foo.bar.Foo.Bar
    entity Foo.Bar.Zoo {} // namespace -> foo.bar.Foo.Bar.Zoo
  ```
  
  Here the name of entity ```Foo``` is used for enitity ```Foo.Bar```. 
  
  **Context Directive** 
  
  For the nested namespace sections use the ```context``` directive. 
  
  ```
    namespace foo.bar;
    
    entity Foo {} // namespace -> foo.bar.Foo;
    
    context scoped {
      entity Bar: Foo {   // namespace -> foo.bar.scoped.Bar
        context nested {
          entity Zoo {}   // namespace -> foo.bar.scoped.nested.Zoo
        }
      }
    }
  ```
  
  ### Usage 
  
  The namespaces are used in the CDS Views using the directive called ```using```. It is the keyword using which namespace are imported. 
  
  Let's take the below declaration for example and i have created it in the file named 'DataModel' in the same directory as my view and see the usage fo the same. 
   ```
    namespace foo.bar;
    
    entity Foo {} // namespace -> foo.bar.Foo;
    
    context scoped {
      entity Bar: Foo {   // namespace -> foo.bar.scoped.Bar
        context nested {
          entity Zoo {}   // namespace -> foo.bar.scoped.nested.Zoo
          entity Car {}   // namespace -> foo.bar.scoped.nested.Car
        }
      }
    }
  ```
  
  To use the entity Foo from the about declartion, the usage is declared as below. 
  
  ```
    usage foo.bar.Foo from './DataModel';
    
    entity demo : Foo {
    
    }
  ```
  
  Or we can follow ES6 declaration as below:
  
  ``` 
    usage {Foo} from './DataModel';
    
    entity demo : Foo {
    
    }
  ```
  
  If i wanted to use multiple entity from the DataModel context. the declaration is as follows. 
  
  ```
    using foo.bar.Foo from './DataModel';
    using foo.bar.scoped.Bar from './DataModel';
  ```
  
  or 
  
  ```
    using {Foo, Bar} from './DataModel';
  ```
  
  In the declaration, in the nested context we have two entities Zoo and Car. Now to import both in to the view we can declare as following. 
  
  ```
    usage foo.bar.scoped.nested from './DataModel';
    
    entity Demo1: nested.Zoo {}
    entity Demo2: nested.Car {}
  ```

**Model Resolution** 
  
  The Usage in CDS work much like ```require``` in **Node JS** and ```imports``` in **ES6**. 
  
  ***Relative Path Resolution***: the directive path with representation ./ or ../ refers to the path from current directory. 
  ***Absolute Path Resolution***: the absolute path are resolved to the ```node_modules``` directing to the node js module imported in CAP.  

  
    
  
  
