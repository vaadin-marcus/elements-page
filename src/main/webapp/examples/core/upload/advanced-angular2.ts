import {Component} from '@angular/core';
import { PolymerElement } from '@vaadin/angular2-polymer';

@Component({
    selector: 'my-upload-limits-component',
    template: `
      <vaadin-upload max-files="3" accept="application/pdf" max-file-size="1000000">
        <div class="drop-label">
          <iron-icon icon="file-upload"></iron-icon>
          Accepts up to 3 PDF files, up to 1 MB each
        </div>
      </vaadin-upload>
    `,
    directives: [ PolymerElement('vaadin-upload') ]
})
export class MyUploadLimitsComponent { }
