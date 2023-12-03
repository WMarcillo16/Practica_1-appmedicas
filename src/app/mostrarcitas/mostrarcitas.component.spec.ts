import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MostrarcitasComponent } from './mostrarcitas.component';

describe('MostrarcitasComponent', () => {
  let component: MostrarcitasComponent;
  let fixture: ComponentFixture<MostrarcitasComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [MostrarcitasComponent]
    });
    fixture = TestBed.createComponent(MostrarcitasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
