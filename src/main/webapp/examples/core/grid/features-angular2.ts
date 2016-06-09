import {Component, OnInit} from '@angular/core';
import {HTTP_PROVIDERS, Http, Response} from '@angular/http';
import {Observable} from 'rxjs/observable';
import 'rxjs/add/operator/map';

import { PolymerElement } from '@vaadin/angular2-polymer';

class Person {
  firstName: string;
  lastName: string;
  email: string;
}

@Component({
  selector: 'my-grid-features-component',
  template: `
    <p>
      <label>Filter by first name: <input (keyup)="filterPeople($event)"/></label>
    </p>
    <vaadin-grid [items]="displayedPeople" selection-mode="multi" (sort-order-changed)="sortPeople($event)">
      <table>
        <colgroup>
          <col sortable name="firstName">
          <col sortable name="lastName">
          <col sortable name="email">
        </colgroup>
      </table>
    </vaadin-grid>
  `,
  directives: [
    PolymerElement('vaadin-grid')
  ],
  providers: [
    HTTP_PROVIDERS
  ],
  styles: [`
    vaadin-grid {
      height: 300px;
    }
  `]
})
export class MyGridFeaturesComponent implements OnInit {
  people: Person[] = [];
  displayedPeople: Person[] = [];

  constructor (private http: Http) {}

  ngOnInit() {
    this.getPeople();
  }

  filterPeople(event: any) {
    const filterText: string = (<HTMLInputElement>event.target).value.toLowerCase();
    this.displayedPeople = this.people.filter((person: Person) =>
      !filterText || person.firstName.toLowerCase().indexOf(filterText) > -1
    );
  }

  sortPeople(event: any) {
    const grid = event.target;
    const sortOrder = grid.sortOrder[0];
    const sortProperty = grid.columns[sortOrder.column].name;
    const sortDirection = sortOrder.direction;
    this.displayedPeople.sort((a, b) => {
      let res: number;
      let valueA: string = grid.get(sortProperty, a),
          valueB: string = grid.get(sortProperty, b);
      if (!isNaN(valueA)) {
        res = parseInt(valueA, 10) - parseInt(valueB, 10);
      } else {
        res = valueA.localeCompare(valueB);
      }
      if (sortDirection === 'desc') {
        res *= -1;
      }
      return res;
    });
  }

  getPeople() {
    this._getJSON('https://demo.vaadin.com/demo-data/1.0/people')
      .subscribe(json => this.displayedPeople = this.people = json.result)
  }

  _getJSON(url: string): Observable<any> {
    return this.http.get(url)
      .map((res: Response) => res.json())
  }
}
