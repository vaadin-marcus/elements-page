import {Component, ViewChild} from '@angular/core';
import {Http, HTTP_PROVIDERS, Response} from '@angular/http';
import 'rxjs/Rx';
import { PolymerElement } from '@vaadin/angular2-polymer';

@Component({
  selector: 'my-sparkline-chart-basic-component',
  template: `
  <vaadin-grid #grid [items]="gridData">
      <table>
        <colgroup>
          <col name="month" header-text="Month" width="100"/>
          <col name="data" header-text="Trend" width="200"/>
          <col name="latest" header-text="Latest value"/>
        </colgroup>
      </table>
  </vaadin-grid>
  `,
  directives: [PolymerElement('vaadin-grid'), PolymerElement('vaadin-sparkline')],
  providers: [HTTP_PROVIDERS],
  styles: [`
    vaadin-grid {
      height: 400px;
      width: 500px;
    }
  `]
})

export class MySparklineChartBasicComponent {
  gridData = [];
  @ViewChild('grid') grid: any;

  constructor(private http: Http) {
  }

  ngAfterViewInit() {
    // Wait until grid is ready to configure renderers and data
    this.grid.nativeElement.then(() => {
      this.setGridRenderers(this.grid.nativeElement);
      this.setGridData();
    });
  }

  setGridData() {
    this.http.get('stockData.json')
      .map((res: Response) => res.json())
      .subscribe((data) => {
        this.gridData = data;
      }
    );
  }

  setGridRenderers(grid: any) {
    //vaadin-charts as a renderer for a vaadin-grid cell
    grid.columns[1].renderer = function(cell) {
      var sparkline = document.createElement('vaadin-sparkline');
      //TODO fix when styling has been fixed
      sparkline.style.width = '150px';
      sparkline.style.height = '48px';
      sparkline.setAttribute('data', cell.data);

      cell.element.innerHTML = '';
      cell.element.appendChild(sparkline);
    };

    grid.columns[2].renderer = function(cell) {
      cell.element.innerHTML = '';

      //show the last value of the data array
      const dataArray = cell.row.data.data;
      cell.element.innerHTML = '$' + dataArray[dataArray.length - 1];
    };
  }
}
