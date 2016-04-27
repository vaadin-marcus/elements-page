import {Component} from 'angular2/core';
import {HTTP_PROVIDERS, Http, Response} from 'angular2/http';
import {Observable} from 'rxjs/observable';

import {VaadinGrid} from '../../../bower_components/vaadin-grid/directives/vaadin-grid';

class Person {
  firstName: string;
  lastName: string;
  email: string;
}

@Component({
  selector: 'my-grid-lazy-component',
  template: `
    <vaadin-grid (ready)="onGridReady($event)">
      <table>
        <colgroup>
          <col name="number" width="80">
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
export class MyGridLazyComponent {
  people: Person[] = [];

  constructor (private http: Http) {}

  onGridReady(grid: any) {
    grid.columns[0].renderer = cell =>
        cell.element.textContent = cell.row.index;

    grid.items = (params: any, callback: Function) =>
      this._getJSON(`https://demo.vaadin.com/demo-data/1.0/people?index=${params.index}&count=${params.count}`)
        .subscribe(json => callback(json.result, json.size));
  }

  _getJSON(url: string): Observable<any> {
    return this.http.get(url)
      .map((res: Response) => res.json())
  }
}
