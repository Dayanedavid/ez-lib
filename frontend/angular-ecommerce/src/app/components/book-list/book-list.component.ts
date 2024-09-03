import { Component } from '@angular/core';
import { Book } from '../../commom/book';
import { BookService } from '../../services/book.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-book-list',
  templateUrl: './book-list-grid.component.html',
  styleUrl: './book-list.component.css'
})
export class BookListComponent {

  books: Book[] = [];
  currentCategoryId: number | undefined;
  searchMode: boolean = false;

  constructor(private bookService: BookService,
              private route: ActivatedRoute ){}

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

    this.bookService.searchBooks(theKeyword).subscribe(
      data => {
        this.books = data;
      }
    )

  }

  handleListBooks(){
    const hasCategoryId: boolean = this.route.snapshot.paramMap.has('id');

    if(hasCategoryId){
      this.currentCategoryId = +this.route.snapshot.paramMap.get('id')!;
    } else {
      this.currentCategoryId =1;
    }

    this.bookService.getBookList(this.currentCategoryId).subscribe(
      data => {
        this.books = data;
      }
    )

  }

}
