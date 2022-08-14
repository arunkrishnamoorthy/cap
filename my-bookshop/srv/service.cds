using mybookshop.db.bookmodel as BookModel from '../db/BookModel.cds';

service CatalogService {
    entity Books @readonly as projection on BookModel.Books;
    entity Authors @readonly as projection on BookModel.Authors;
    entity Orders as projection on BookModel.Orders;
}
