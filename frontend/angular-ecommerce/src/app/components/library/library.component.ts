import { Component } from '@angular/core';
import { BookDTO } from '../../common/book-dto';
import { ActivatedRoute } from '@angular/router';
import { MyLibraryService } from '../../services/my-library.service';

@Component({
  selector: 'app-library',
  templateUrl: './library.component.html',
  styleUrl: './library.component.css'
})
export class LibraryComponent {


  books: BookDTO[] = [];

  constructor(private library: MyLibraryService,
  private route: ActivatedRoute){}

  ngOnInit(){
    this.route.paramMap.subscribe(() => {
      this.listBooks();
    });
  }

  listBooks() {
    this.library.getBooks(sessionStorage.getItem('userId')).subscribe((data) => {
      this.books = data; 
    });

  }


 
}
