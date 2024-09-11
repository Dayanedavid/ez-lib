import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Purchase } from '../common/purchase';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CheckoutService {

  private url = "https://ezlib.onrender.com/api/checkout/purchase";

  constructor(private httpCllient: HttpClient) { }

  placeOrder(purchase : Purchase): Observable<any>{
    return this.httpCllient.post<Purchase>(this.url, purchase);
  }
}
