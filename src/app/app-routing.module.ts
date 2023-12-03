import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { DoctoresComponent } from './doctores/doctores.component';
import { MostrarcitasComponent } from './mostrarcitas/mostrarcitas.component';
import { RegistrarcitasComponent } from './registrarcitas/registrarcitas.component';
import { PrincipalComponent } from './layout/privado/principal/principal.component';
const routes: Routes = [

  {path: 'doctores', component: DoctoresComponent},
  { path: 'mostrarcitas', component: MostrarcitasComponent},
  {path: 'registrarcitas', component: RegistrarcitasComponent},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
