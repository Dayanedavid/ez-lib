import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Purchase } from '../common/purchase';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CheckoutService {

  private url = "http://localhost:8080/api/checkout/purchase";

  constructor(private httpCllient: HttpClient) { }

  placeOrder(purchase : Purchase): Observable<any>{
    return this.httpCllient.post<Purchase>(this.url, purchase);
  }
}
