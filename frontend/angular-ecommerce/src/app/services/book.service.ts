import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Book } from '../common/book';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { BookCategory } from '../common/book-category';

@Injectable({
  providedIn: 'root'
})
export class BookService {

  private baseUrl = 'https://ezlib.onrender.com/api/books';

  private categoryUrl = 'https://ezlib.onrender.com/api/book-category';

  constructor(private httpClient: HttpClient) { }

  getBook(theBookId: number): Observable<Book> {

    const bookUrl = `${this.baseUrl}/${theBookId}`;

    return this.httpClient.get<Book>(bookUrl);
  }

  getBookListPaginate(thePage: number, 
                         thePageSize: number, 
                         theCategoryId: number): Observable<GetResponseBooks> {

    if(theCategoryId == 0){
      const searchUrl = `${this.baseUrl}?`
                    + `&page=${thePage}&size=${thePageSize}`;
      return this.httpClient.get<GetResponseBooks>(searchUrl);
    
    } else{

      const searchUrl = `${this.baseUrl}/search/findByCategoryId?id=${theCategoryId}`
                    + `&page=${thePage}&size=${thePageSize}`;
      return this.httpClient.get<GetResponseBooks>(searchUrl);

    }
  }


  searchBooksPaginate(thePage: number, 
    thePageSize: number, 
    theKeyword: string): Observable<GetResponseBooks> {

    const searchUrl = `${this.baseUrl}/search/findByNameContaining?name=${theKeyword}`
    + `&page=${thePage}&size=${thePageSize}`;
    return this.httpClient.get<GetResponseBooks>(searchUrl);

  }

  getBookCategories(): Observable<BookCategory[]> {

    return this.httpClient.get<GetResponseBookCategory>(this.categoryUrl).pipe(
      map(response => response._embedded.bookCategory)
    );
  }

}

interface GetResponseBooks {
  _embedded: {
    books: Book[];
  },
  page: {
    size: number,
    totalElements: number,
    totalPages: number,
    number: number
  }
}

interface GetResponseBookCategory {
  _embedded: {
    bookCategory: BookCategory[];
  }
}