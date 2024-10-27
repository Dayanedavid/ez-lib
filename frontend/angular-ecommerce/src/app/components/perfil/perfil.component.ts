import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { CustomerService } from '../../services/customer.service';
import { Order } from '../../common/order';
import { OrderResponse } from '../../common/order-response';

@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.component.html',
  styleUrl: './perfil.component.css'
})
export class PerfilComponent {
  orders!: OrderResponse[];
  password!: string;
  email!: string;
  name!:string;

  ngOnInit(){
    this.route.paramMap.subscribe(() => {
      this.listOrders();
    });
  }

  constructor(
    private router:Router,
    private customerService: CustomerService,
    private route: ActivatedRoute,
  ){}

  private baseUrl = 'https://ezlib.onrender.com';


  editar(){

  }

  onSubmit(){
    this.customerService.salvar(this.email, this.password, this.name).subscribe(
      
    );
  }

  listOrders() {

    this.customerService.getOrders(sessionStorage.getItem("userId")).subscribe(
      data => {
        this.orders = data;
      }
    );
  }



}
