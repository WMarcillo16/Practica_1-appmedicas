import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './layout/publico/login/login/login.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { PrincipalComponent } from './layout/privado/principal/principal.component';
import { DoctoresComponent } from './doctores/doctores.component';
import { MostrarcitasComponent } from './mostrarcitas/mostrarcitas.component';
import { RegistrarcitasComponent } from './registrarcitas/registrarcitas.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    PrincipalComponent,
    DoctoresComponent,
    MostrarcitasComponent,
    RegistrarcitasComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
