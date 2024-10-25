import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { LoginResponse } from '../common/login-response';
import { Customer } from '../common/customer';
import { Order } from '../common/order';
import { map, Observable } from 'rxjs';
import { OrderResponse } from '../common/order-response';

@Injectable({
  providedIn: 'root'
})
export class CustomerService {

  private baseUrl = 'http://localhost:8080/api/customers';


  constructor(private httpClient: HttpClient) { }


  salvar(name: string, email: string, password: string){
    return this.httpClient.put<Customer>(this.baseUrl + "/register", { email, password, name })
    // .pipe(
    //   map((response: LoginResponse) => {
    //     return {
    //       token: response.token,
    //       name: response.name,
    //       email: response.email
    //     };
    //   })
    // )
  }

  getOrders(customer: string | null): Observable<OrderResponse[]>{
    const bookUrl = `${this.baseUrl}/${customer}/orders`;

    return this.httpClient.get<GetOrderCust>(bookUrl).pipe(
      map(response => response._embedded.orders)
    );
  }
 
}

interface GetOrderCust {
  _embedded: {
    orders: OrderResponse[];
  }
}
