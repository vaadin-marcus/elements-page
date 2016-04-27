import {Component, OnInit} from 'angular2/core';
import {HTTP_PROVIDERS, Http, Response} from 'angular2/http';
import {Observable} from 'rxjs/observable';

import {VaadinGrid} from '../../../bower_components/vaadin-grid/directives/vaadin-grid';

class Person {
  firstName: string;
  lastName: string;
  email: string;
}

@Component({
  selector: 'my-grid-simple-component',
  template: `
    <vaadin-grid [items]="people">
      <table>
        <colgroup>
          <col name="firstName">
          <col name="lastName">
          <col name="email">
        </colgroup>
      </table>
    </vaadin-grid>
  `,
  directives: [
    VaadinGrid
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
export class MyGridSimpleComponent implements OnInit {
  people: Person[] = [];

  constructor (private http: Http) {}

  ngOnInit() {
    this.getPeople();
  }

  getPeople() {
    this._getJSON('https://demo.vaadin.com/demo-data/1.0/people')
      .subscribe(json => this.people = json.result)
  }

  _getJSON(url: string): Observable<any> {
    return this.http.get(url)
      .map((res: Response) => res.json())
  }
}
