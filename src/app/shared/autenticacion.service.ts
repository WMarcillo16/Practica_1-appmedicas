import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AutenticacionService {
  private ingresar:boolean = false;
  constructor() { }

  public ingresarAplicativo(objet:any):boolean{
    this.ingresar =  objet.usuario == 'well@gmail.com' && objet.password == '123'
    return this.ingresar;
  }

  public habilitarlogeo(): boolean{
   return this.ingresar;
  }
}
