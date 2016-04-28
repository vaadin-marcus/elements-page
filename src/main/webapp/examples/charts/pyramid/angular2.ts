import {Component} from 'angular2/core';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-pyramid-chart-basic-component',
  template: `
  <vaadin-pyramid-chart id="pyramid">
    <chart-title>Sales pyramid</chart-title>
    <plot-options>
      <series>
        <data-labels enabled="true" format="<b>{point.name}</b> ({point.y:.0f})" color="black" soft-connector="true">
        </data-labels>
      </series>
    </plot-options>
    <legend enabled="false"></legend>
    <data-series name="Unique users">
      <data>
        ['Website visits',   15654],
        ['Downloads',       4064],
        ['Requested price list', 1987],
        ['Invoice sent',    976],
        ['Finalized',    846]
      </data>
    </data-series>
  </vaadin-pyramid-chart>
  `,
  directives: [VaadinCharts, DataSeries]
})

export class MyPyramidChartBasicComponent {
}
