import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { LoginResponse } from '../common/login-response';
import { map, tap } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  apiUrl: string = "https://ezlib.onrender.com"

  constructor(private httpClient: HttpClient) { }


  login(email: string, password: string) {
    return this.httpClient.post<LoginResponse>(this.apiUrl + "/login", { email, password }).pipe(
      map((response: LoginResponse) => {
        // Armazenar token e nome no sessionStorage
        sessionStorage.setItem("auth-token", String(response.token));
        sessionStorage.setItem("username", response.name);
        sessionStorage.setItem("email", response.email);
        sessionStorage.setItem("userId", response.id);

        console.log(response.name)


        return {
          token: response.token,
          name: response.name,
          email: response.email
        };
      })
    );
  }
  

  salvar(name: string, email: string, password: string){
    return this.httpClient.post<LoginResponse>(this.apiUrl + "/register", { email, password, name }).pipe(
      map((response: LoginResponse) => {
        return {
          token: response.token,
          name: response.name,
          email: response.email
        };
      })
    )
  }
}
