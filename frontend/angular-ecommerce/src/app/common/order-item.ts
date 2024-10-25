import { CartItem } from "./cart-item";

export class OrderItem {
    imageUrl:string;
    price: number;
    quantity: number;
    bookId: number;


    constructor(cartItem: CartItem){
        this.imageUrl = cartItem.imageUrl;
        this.price = cartItem.price
        this.quantity = cartItem.quantity;
        this.bookId = cartItem.id;
        console.log(this.bookId)
    }
}


