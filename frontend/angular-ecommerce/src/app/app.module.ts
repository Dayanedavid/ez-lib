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
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { CartStatusComponent } from './components/cart-status/cart-status.component';
import { CartDetailsComponent } from './components/cart-details/cart-details.component';
import { CheckoutComponent } from './components/checkout/checkout.component';
import { ContactComponent } from './components/contact/contact.component';
import { TeamComponent } from './components/team/team.component';
import { QuestionsComponent } from './components/questions/questions.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { LoginComponent } from './components/login/login.component';
import { LayoutComponent } from './components/layout/layout.component';
import { AuthGuard } from './services/auth-guard.service';
import { LoginStatusComponent } from './components/login-status/login-status.component';
import { OrdersHistoryComponent } from './components/orders-history/orders-history.component';
import { LibraryComponent } from './components/library/library.component';
import { PerfilComponent } from './components/perfil/perfil.component';


const routes: Routes = [
  {path:'', component: LoginComponent},
  { path: 'ezlib', component: LayoutComponent, children:[
    {path: 'profile', component: PerfilComponent, canActivate: [AuthGuard]},
    {path: 'library', component: LibraryComponent, canActivate: [AuthGuard]},
    {path: 'orders', component: OrdersHistoryComponent, canActivate: [AuthGuard]},
    {path: 'team', component: TeamComponent, canActivate: [AuthGuard]},
    {path: 'contact', component: ContactComponent, canActivate: [AuthGuard]},
    {path: 'questions', component: QuestionsComponent, canActivate: [AuthGuard]},
    {path: 'cart-details', component: CartDetailsComponent, canActivate: [AuthGuard]},
    {path: 'books/:id', component: BookDetailsComponent,canActivate: [AuthGuard]},
    {path: 'search/:keyword', component: BookListComponent, canActivate: [AuthGuard]},
    {path: 'category/:id', component: BookListComponent, canActivate: [AuthGuard]},
    {path: 'category', component: BookListComponent, canActivate: [AuthGuard]},
    {path: 'books', component: BookListComponent,canActivate: [AuthGuard]},
  ]},
  // {path: '', redirectTo: '', pathMatch: 'full'},
  // {path: '**', redirectTo: '', pathMatch: 'full'}
  
];

@NgModule({
  declarations: [
    AppComponent,
    BookListComponent,
    BookCategoryMenuComponent,
    SearchComponent,
    BookDetailsComponent,
    CartStatusComponent,
    CartDetailsComponent,
    CheckoutComponent,
    ContactComponent,
    TeamComponent,
    QuestionsComponent,
    LoginComponent,
    LayoutComponent,
    LoginStatusComponent,
    OrdersHistoryComponent,
    LibraryComponent,
    PerfilComponent,
  ],
  imports: [
    RouterModule.forRoot(routes),
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    NgbModule,
    ReactiveFormsModule
  ],
  providers: [provideHttpClient(), BookService],
  bootstrap: [AppComponent]
})
export class AppModule { }
