import { Component } from '@angular/core';
import { CartItem } from '../../common/cart-item';
import { CartService } from '../../services/cart.service';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { CheckoutService } from '../../services/checkout.service';
import { Router } from '@angular/router';
import { OrderItem } from '../../common/order-item';
import { Purchase } from '../../common/purchase';
import { Order } from '../../common/order';

@Component({
  selector: 'app-cart-details',
  templateUrl: './cart-details.component.html',
  styleUrl: './cart-details.component.css'
})
export class CartDetailsComponent {

  cartItems: CartItem[] = [];
  totalPrice: number = 0;
  totalQuantity: number = 0;
  checkoutGroup!: FormGroup;


  constructor(private cartService: CartService,
    private formBuilder: FormBuilder,
    private checkoutService: CheckoutService,
    private router: Router
  ){}

  ngOnInit(){
    this.listCartDetails();
    this.checkoutGroup = this.formBuilder.group({
      customer: this.formBuilder.group({
        name:  new FormControl('', [Validators.required]),
        email: new FormControl('', [Validators.required, Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$')])                   
      })
    });
  }

  listCartDetails() {

    this.cartItems = this.cartService.cartItems;

    this.cartService.totalPrice.subscribe(
      data => this.totalPrice = data,
    );

    this.cartService.totalQuantity.subscribe(
      data => this.totalQuantity = data,
    );


    this.cartService.computeCartTotals();
  }

  remove(cart :CartItem){
    this.cartService.remove(cart);
  }

  onSubmit(){
    let order = new Order(this.totalQuantity, this.totalPrice);
  
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
