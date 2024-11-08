import { Component } from '@angular/core';
import { Book } from '../../common/book';
import { BookService } from '../../services/book.service';
import { ActivatedRoute } from '@angular/router';
import { CartItem } from '../../common/cart-item';
import { CartService } from '../../services/cart.service';

@Component({
  selector: 'app-book-list',
  templateUrl: './book-list-grid.component.html',
  styleUrl: './book-list.component.css'
})
export class BookListComponent{

  books: Book[] = [];
  
  currentCategoryId: number = 1;
  previousCategoryId: number = 1;
  searchMode: boolean = false;

  previousKey: string= "";
  pageNumber: number = 1;
  pageSize: number = 20;
  totalElements: number = 0;


  constructor(private bookService: BookService,
              private route: ActivatedRoute,
              private cartService: CartService ){}

  ngOnInit(){
    this.route.paramMap.subscribe(() => {
      this.listBooks();
    });
  }
  

  listBooks() {
    this.searchMode = this.route.snapshot.paramMap.has('keyword');

    if(this.searchMode){
      this.handleSearchBooks();
    }else{
      this.handleListBooks();
    }

  }

  handleSearchBooks() {
    const theKeyword: string = this.route.snapshot.paramMap.get('keyword')!;

    if(this.previousKey != theKeyword){
      this.pageNumber = 1;
    }

    this.previousKey = theKeyword;


    this.bookService.searchBooksPaginate(this.pageNumber-1, this.pageSize, this.previousKey)
    .subscribe(this.processResult());

  }


  handleListBooks(){
    const hasCategoryId: boolean = this.route.snapshot.paramMap.has('id');

    if(hasCategoryId){
      this.currentCategoryId = +this.route.snapshot.paramMap.get('id')!;
    } else {
      this.currentCategoryId = 0;
    }

    if(this.previousCategoryId != this.currentCategoryId){
      this.pageNumber=1;
    }

    this.previousCategoryId = this.currentCategoryId;

    this.bookService.getBookListPaginate(this.pageNumber-1, this.pageSize, this.currentCategoryId)
    .subscribe(this.processResult());
  }

  processResult(){
    return (data:any) =>{
      this.books = data._embedded.books;
        this.pageNumber = data.page.number + 1;
        this.pageSize = data.page.size;
        this.totalElements = data.page.totalElements;
    }
  }

  addToCart(book: Book){
    const cartItem = new CartItem(book.id!, book.name!, book.imageUrl!, book.author, book.price!);

    this.cartService.addToCart(cartItem);
  }

}
