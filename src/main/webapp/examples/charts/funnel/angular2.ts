import {Component} from 'angular2/core';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-funnel-chart-basic-component',
  template: `
  <vaadin-funnel-chart id="funnel">
  <title>Sales funnel</title>
  <plot-options>
    <series neck-width="30%" neck-height="25%">
      <data-labels enabled="true" format="<b>{point.name}</b> ({point.y:.0f})" color="black" soft-connector="true"></data-labels>
    </series>
  </plot-options>
  <legend enabled="false"></legend>
  <data-series name="Unique users">
    <data>
      ['Website visits', 15654], ['Downloads', 4064], ['Requested price list', 1987], ['Invoice sent', 976], ['Finalized', 846]
    </data>
  </data-series>
</vaadin-funnel-chart>
  `,
  directives: [VaadinCharts, DataSeries]
})

export class MyFunnelChartBasicComponent {
}
