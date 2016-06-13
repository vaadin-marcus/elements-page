import {Component} from '@angular/core';
import { PolymerElement } from '@vaadin/angular2-polymer';

@Component({
  selector: 'my-gauge-chart-dual-axis-component',
  template: `
  <vaadin-gauge-chart id="gauge-with-dual-axes">
  <chart align-ticks="false" plot-background-color="null" plot-background-image="null" plot-border-width="0" plot-shadow="false"></chart>
  <chart-title>Speedometer with dual axes</chart-title>
  <pane start-angle="-150" end-angle="150"></pane>
  <y-axis min="0" max="200" line-color="#339" tick-color="#339" minor-tick-color="#339" offset="-25" line-width="2" tick-length="5" minor-tick-length="5" end-on-tick="false">
    <labels distance="-20" rotation="auto"></labels>
  </y-axis>
  <y-axis min="0" max="124" tick-position="outside" line-color="#933" line-width="2" minor-tick-position="outside" tick-color="#933" minor-tick-color="#933" tick-length="5" minor-tick-length="5" offset="-20" end-on-tick="false">
    <labels distance="12" rotation="auto"></labels>
  </y-axis>
  <tooltip enabled="false"></tooltip>
  <plot-options>
    <gauge>
      <data-labels formatter="function () { return this.y + ' km/h<br/>' + Math.round(this.y * 0.621) + ' mph'; }">
        <background-color>
          <linear-gradient x1="0" y1="0" x2="0" y2="1">
          </linear-gradient>
          <stops>0, #DDD</stops>
          <stops>1, #FFF</stops>
        </background-color>
      </data-labels>
    </gauge>
  </plot-options>
  <data-series>
    <name>Speed</name>
    <data>80</data>
  </data-series>
</vaadin-gauge-chart>
  `,
  directives: [ PolymerElement('vaadin-gauge-chart') ]
})

export class MyGaugeChartDualAxisComponent {
}
