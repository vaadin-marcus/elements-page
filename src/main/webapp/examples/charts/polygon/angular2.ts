import {Component} from 'angular2/core';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-polygon-chart-basic-component',
  template: `
  <vaadin-polygon-chart id="scatter-and-polygon">
    <chart-title>Height vs Weight</chart-title>
    <subtitle>Polygon series</subtitle>

    <x-axis grid-line-width="1" start-on-tick="true" end-on-tick="true" show-last-label="true">
      <title>Height (cm)</title>
    </x-axis>

    <y-axis>
      <title>Weight (kg)</title>
    </y-axis>
    <legend layout="vertical" align="right" vertical-align="middle">
    </legend>
    <tooltip header-format="<b>{series.name}</b><br>" point-format="{point.x} cm; {point.y} kg">
    </tooltip>
    <data-series name="Target">
      <data>[153, 42], [149, 46], [149, 55], [152, 60], [159, 70], [170, 77], [180, 70], [180,
        60], [173, 52], [166, 45]
      </data>
    </data-series>

  </vaadin-polygon-chart>
  `,
  directives: [VaadinCharts, DataSeries]
})

export class MyPolygonChartBasicComponent {
}
