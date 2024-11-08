import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { BookDTO } from '../common/book-dto';

@Injectable({
  providedIn: 'root'
})
export class MyLibraryService {
  
  private baseUrl = 'http://localhost:8080/api/library';


  constructor(private httpClient: HttpClient) { }

  getBooks(customer: string | null): Observable<BookDTO[]> {

    const bookUrl = `${this.baseUrl}?id=${customer}`;

    return this.httpClient.get<BookDTO[]>(bookUrl);
  }
}
