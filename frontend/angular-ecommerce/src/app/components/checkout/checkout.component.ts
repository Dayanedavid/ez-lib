import { Component } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { CheckoutService } from '../../services/checkout.service';
import { Router } from '@angular/router';
import { Order } from '../../common/order';
import { CartService } from '../../services/cart.service';
import { OrderItem } from '../../common/order-item';
import { Purchase } from '../../common/purchase';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrl: './checkout.component.css'
})
export class CheckoutComponent {

  checkoutGroup!: FormGroup;

  totalPrice: number = 0;
  totalQuantity:number = 0;

  constructor(private formBuilder: FormBuilder,
    private cartService: CartService,
    private checkoutService: CheckoutService,
    private router: Router
  ){}


  ngOnInit(){
    this.checkoutGroup = this.formBuilder.group({
      customer: this.formBuilder.group({
        name:  new FormControl('', [Validators.required]),
        email: new FormControl('', [Validators.required, Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$')])                   
      })
    });
  }

  onSubmit(){
    let order = new Order(this.totalPrice, this.totalQuantity);
  
    const cartIitems = this.cartService.cartItems;

    let orderItems: OrderItem[] = [];

    for(let i=0; i< cartIitems.length; i++){
      orderItems[i] =  new OrderItem(cartIitems[i]);
    }

    let purchase = new Purchase();

    purchase.customer = sessionStorage.getItem("email");
    purchase.order = order;
    purchase.orderItems = orderItems;

    this.checkoutService.placeOrder(purchase).subscribe({
      next: response => {
        alert(`Seu pedido foi recebido.\n Numero do pedido: ${response.orderNumber}`)
        this.resetCart();
      },
      error: e =>{
        alert(`Há um erro: ${e.message}`);
      }
    });



  }
  resetCart() {
    this.cartService.cartItems = [];
    
    this.cartService.totalPrice.next(0);
    this.cartService.totalQuantity.next(0);

    this.checkoutGroup.reset();

    this.router.navigateByUrl("ezlib/books");
  }


  
}
