import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { Usuario } from '../../common/usuario';
import { AuthService } from '../../services/auth.service';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent {

  email!: string;
  password!: string;
  name!:string;
  loginError!: boolean;
  cadastrando!: boolean;
  mensagemSucess!:string | null;
  logado!: boolean;

  constructor(
    private router:Router,
    private authService: AuthService
  ){}

  onSubmit(){
    this.loginError = false;
    this.mensagemSucess = null;
    this.authService.login(this.email, this.password).subscribe(
      (result) => {
        this.email = '';
        this.password='';
        this.logado = result.token;
        this.router.navigate(['/ezlib/books'])
      },
      (error) => {
        this.email = '';
        this.password='';
        console.error('Login error', error);
        this.loginError = true;
      }
    );
  }

  preparaCadastrar(event: Event){
    this.loginError = false;
    this.mensagemSucess = null;
    this.email = '';
    this.password='';

    event.preventDefault();
    this.cadastrando = true;
  }

  cancelaCadastro(){
    this.email = '';
    this.password='';
    this.loginError = false;
    this.mensagemSucess = null;
    this.cadastrando = false;
  }

  cadastrar(){
    this.loginError = false;
    this.mensagemSucess = null;

    this.authService.salvar(this.name, this.email, this.password).subscribe(
      (result) => {
        this.mensagemSucess = "Usuario cadastrado com sucesso! Efetue o login.";
        this.cadastrando = false;
      },
      (error) => {
        this.mensagemSucess = "Usuario já possui cadastro! Efetue o login.";
        this.cadastrando = false;
      }
    );
  }

}
