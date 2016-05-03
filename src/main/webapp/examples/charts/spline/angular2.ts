import {Component} from '@angular/core';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-spline-chart-basic-component',
  template: `
  <vaadin-spline-chart id="updatingSpline" on-chart-loaded="loadListener()">
        <chart animation="true" margin-right="10">
        </chart>
        <chart-title>Live random data</chart-title>


        <x-axis type="datetime" tick-pixel-interval="150">
        </x-axis>

        <y-axis>
          <title>Value</title>
          <plot-lines value="0" width="1" color="#808080"></plot-lines>
        </y-axis>

        <tooltip formatter="function () {
                      return '<b>' + this.series.name + '</b><br/>' +
                          Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                          Highcharts.numberFormat(this.y, 2);}">
        </tooltip>

        <legend enabled="false"></legend>

        <exporting enabled="false"></exporting>

        <data-series name="Random data" [data]="seriesData">
          <data>

          </data>
        </data-series>

      </vaadin-spline-chart>
  `,
  directives: [VaadinCharts, DataSeries]
})

export class MySplineChartBasicComponent {
  //TODO Refactor this
  isAttached = false;

  seriesData = [
    [(new Date()).getTime()-18000,Math.random()], [(new
    Date()).getTime()-17000,Math.random()], [(new Date()).getTime()-16000,Math.random()],
    [(new Date()).getTime()-15000,Math.random()], [(new
    Date()).getTime()-14000,Math.random()], [(new Date()).getTime()-13000,Math.random()],
    [(new Date()).getTime()-12000,Math.random()], [(new
    Date()).getTime()-11000,Math.random()], [(new Date()).getTime()-10000,Math.random()],
    [(new Date()).getTime()-9000,Math.random()], [(new
    Date()).getTime()-8000,Math.random()], [(new
    Date()).getTime()-7000,Math.random()], [(new Date()).getTime()-6000,Math.random()],
    [(new Date()).getTime()-5000,Math.random()], [(new
    Date()).getTime()-4000,Math.random()], [(new Date()).getTime()-3000,Math.random()],
    [(new Date()).getTime()-2000,Math.random()],
    [(new Date()).getTime()-1000,Math.random()], [(new Date()).getTime(),Math.random()]
  ]

  constructor() {}

  updateChart() {
    if (this.isAttached) {
      /*var chart = document.querySelector('#updatingSpline');
      var series = chart.series[0];*/
      var x = (new Date()).getTime(), // current time
          y = Math.random();
      //series.addPoint([x, y], true, true);
      this.seriesData.shift();
      this.seriesData.push([x, y]);
      setTimeout(this.updateChart.bind(this), 1000);
    }
  }

  loadListener() {
    this.isAttached = true;
    this.updateChart();
  }
}
