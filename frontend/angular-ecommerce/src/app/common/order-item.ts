import { CartItem } from "./cart-item";

export class OrderItem {
    imageUrl:string;
    price: number;
    quantity: number;
    booktId: string;


    constructor(cartItem: CartItem){
        this.imageUrl = cartItem.imageUrl;
        this.price = cartItem.price
        this.quantity = cartItem.quantity;
        this.booktId = cartItem.id;
    }
}


