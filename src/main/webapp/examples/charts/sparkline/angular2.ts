import {Component, OnInit} from '@angular/core';
import {Http, HTTP_PROVIDERS, Response} from '@angular/http';
import {VaadinGrid} from '../../../bower_components/vaadin-grid/directives/vaadin-grid';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-sparkline-chart-basic-component',
  template: `
  <vaadin-grid id="grid" [items]="gridData" (ready)="setGridRenderers($event)">
      <table>
        <colgroup>
          <col name="month" header-text="Month" width="100"/>
          <col name="data" header-text="Trend" width="200"/>
          <col name="latest" header-text="Latest value"/>
        </colgroup>
      </table>
  </vaadin-grid>
  `,
  directives: [VaadinCharts, DataSeries, VaadinGrid],
  providers: [HTTP_PROVIDERS],
  styles: [`
    vaadin-grid {
      height: 400px;
    }
  `]
})

export class MySparklineChartBasicComponent implements OnInit {
  gridData = [];

  constructor(private http: Http) {}

  ngOnInit() {
    this.setGridData();
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
