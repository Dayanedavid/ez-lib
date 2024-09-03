import { Injectable } from '@angular/core';
import { Book } from '../commom/book';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { BookCategory } from '../commom/book-category';


@Injectable({
  providedIn: 'root'
})
export class BookService {

  private baseUrl = 'http://localhost:8080/api/books';
  private categoryUrl = 'http://localhost:8080/api/book-category';

  constructor(private httpClient: HttpClient) { }

  getBookList(categoryId: number): Observable<Book[]>{

    const searchUrl = `${this.baseUrl}/search/findByCategoryId?id=${categoryId}`

    return this.getBooks(searchUrl);
  }

  getBookCategories(): Observable<BookCategory[]> {

    return this.httpClient.get<GetResponseBookCategory>(this.categoryUrl).pipe(
      map(response => response._embedded.bookCategory)
    );
  }

  searchBooks(theKeyword: string) : Observable<Book[]> {

    const searchUrl = `${this.baseUrl}/search/findByNameContaining?name=${theKeyword}`;

    return this.getBooks(searchUrl);
  }

  private getBooks(searchUrl: string): Observable<Book[]> {
    return this.httpClient.get<GetResponseBooks>(searchUrl).pipe(
      map(response => response._embedded.books)
    );
  }

  getBook(bookId: number) : Observable<Book> {
    
    const bookUrl = `${this.baseUrl}/${bookId};`
    return this.httpClient.get<Book>(bookUrl);
  }
}


interface GetResponseBooks{
  _embedded: {
    books:Book[];
  }
}

interface GetResponseBookCategory{
  _embedded: {
    bookCategory:BookCategory[];
  }
}
