import { Component, OnInit } from '@angular/core';
import { Book } from '../../common/book';
import { BookService } from '../../services/book.service';
import { ActivatedRoute } from '@angular/router';
import { CartService } from '../../services/cart.service';
import { CartItem } from '../../common/cart-item';

@Component({
  selector: 'app-book-details',
  templateUrl: './book-details.component.html',
  styleUrl: './book-details.component.css'
})
export class BookDetailsComponent {
  
  book!: Book;

  constructor(private bookService: BookService,
              private route: ActivatedRoute,
              private cartService: CartService){}

  ngOnInit(): void{
    this.route.paramMap.subscribe(() => {
      this.handleBookDetail();
    });

  }
  handleBookDetail() {
    const bookId: number = +this.route.snapshot.paramMap.get('id')!;

    this.bookService.getBook(bookId).subscribe(
      data => {
        this.book = data;
      }
    )
  }

  addToCart(book: Book){
    const cartItem = new CartItem(book.id!, book.name!, book.imageUrl!, book.author, book.price!);
    this.cartService.addToCart(cartItem);

  }

}
