import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BookListComponent } from './components/book-list/book-list.component';
import { provideHttpClient } from '@angular/common/http';
import { BookService } from './services/book.service';
import { RouterModule, Routes } from '@angular/router';
import { BookCategoryMenuComponent } from './components/book-category-menu/book-category-menu.component';
import { SearchComponent } from './components/search/search.component';
import { BookDetailsComponent } from './components/book-details/book-details.component';

const routes: Routes = [
  {path: 'books/:id', component: BookDetailsComponent},
  {path: 'search/:keyword', component: BookListComponent},
  {path: 'category/:id', component: BookListComponent},
  {path: 'category', component: BookListComponent},
  {path: 'books', component: BookListComponent},
  {path: '', redirectTo: '/books', pathMatch: 'full'},
  {path: '**', redirectTo: '/books', pathMatch: 'full'}
];

@NgModule({
  declarations: [
    AppComponent,
    BookListComponent,
    BookCategoryMenuComponent,
    SearchComponent,
    BookDetailsComponent
  ],
  imports: [
    RouterModule.forRoot(routes),
    BrowserModule,
    AppRoutingModule
  ],
  providers: [provideHttpClient(), BookService],
  bootstrap: [AppComponent]
})
export class AppModule { }
