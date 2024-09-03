import { Component } from '@angular/core';
import { Book } from '../../commom/book';
import { BookService } from '../../services/book.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-book-details',
  templateUrl: './book-details.component.html',
  styleUrl: './book-details.component.css'
})
export class BookDetailsComponent {
  
  book!: Book;

  constructor(private bookService: BookService,
              private route: ActivatedRoute){}

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

}
