import { Component, Inject, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login-status',
  templateUrl: './login-status.component.html',
  styleUrls: ['./login-status.component.css']
})
export class LoginStatusComponent implements OnInit {

  logado = sessionStorage.getItem("auth-token");
  userFullName = sessionStorage.getItem("username");
  constructor(private router: Router) { }

  ngOnInit(): void {

  }
  

  logout() {
    sessionStorage.removeItem("auth-token");
    sessionStorage.removeItem("username");

    this.router.navigate([''])
  }

}