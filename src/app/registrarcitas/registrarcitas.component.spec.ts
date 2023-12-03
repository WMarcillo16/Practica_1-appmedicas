import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RegistrarcitasComponent } from './registrarcitas.component';

describe('RegistrarcitasComponent', () => {
  let component: RegistrarcitasComponent;
  let fixture: ComponentFixture<RegistrarcitasComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [RegistrarcitasComponent]
    });
    fixture = TestBed.createComponent(RegistrarcitasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
