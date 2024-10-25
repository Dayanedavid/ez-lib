import { Customer } from "./customer";
import { Order } from "./order";
import { OrderItem } from "./order-item";

export class Purchase {
    customer!: string | null;
    order!: Order;
    orderItems!: OrderItem[]; 
}

