import {Component} from '@angular/core';
import {VaadinComboBox} from '../../../bower_components/vaadin-combo-box/directives/vaadin-combo-box';

class Element {
    constructor(
        public name: string
    ) { }
}

@Component({
    selector: 'my-combo-box-form-component',
    template: `
    <form #elementForm="ngForm" (ngSubmit)="onSubmit()">
      <vaadin-combo-box label="Element" required [items]="elements" [(ngModel)]="model.name" ngControl="ngForm"></vaadin-combo-box>
      <button [disabled]="!elementForm.form.valid">Submit</button>
    </form>
  `,
    directives: [VaadinComboBox],
    styles: [`
    vaadin-combo-box {
      width: 300px;
    }
  `]
})
export class MyComboBoxFormComponent {
    model = new Element('Carbon');

    elements = ['Actinium', 'Aluminium', 'Americium', 'Antimony', 'Argon',
        'Arsenic', 'Astatine', 'Barium', 'Berkelium', 'Beryllium', 'Bismuth',
        'Bohrium', 'Boron', 'Bromine', 'Cadmium', 'Caesium', 'Calcium',
        'Californium', 'Carbon', 'Cerium', 'Chlorine', 'Chromium', 'Cobalt',
        'Copernicium', 'Copper', 'Curium', 'Darmstadtium', 'Dubnium',
        'Dysprosium', 'Einsteinium', 'Erbium', 'Europium', 'Fermium',
        'Flerovium', 'Fluorine', 'Francium', 'Gadolinium', 'Gallium',
        'Germanium', 'Gold', 'Hafnium', 'Hassium', 'Helium', 'Holmium',
        'Hydrogen', 'Indium', 'Iodine', 'Iridium', 'Iron', 'Krypton',
        'Lanthanum', 'Lawrencium', 'Lead', 'Lithium', 'Livermorium', 'Lutetium',
        'Magnesium', 'Manganese', 'Meitnerium', 'Mendelevium', 'Mercury',
        'Molybdenum', 'Neodymium', 'Neon', 'Neptunium', 'Nickel', 'Niobium',
        'Nitrogen', 'Nobelium', 'Osmium', 'Oxygen', 'Palladium', 'Phosphorus',
        'Platinum', 'Plutonium', 'Polonium', 'Potassium', 'Praseodymium',
        'Promethium', 'Protactinium', 'Radium', 'Radon', 'Rhenium', 'Rhodium',
        'Roentgenium', 'Rubidium', 'Ruthenium', 'Rutherfordium', 'Samarium',
        'Scandium', 'Seaborgium', 'Selenium', 'Silicon', 'Silver', 'Sodium',
        'Strontium', 'Sulfur', 'Tantalum', 'Technetium', 'Tellurium', 'Terbium',
        'Thallium', 'Thorium', 'Thulium', 'Tin', 'Titanium', 'Tungsten',
        'Ununoctium', 'Ununpentium', 'Ununseptium', 'Ununtrium', 'Uranium',
        'Vanadium', 'Xenon', 'Ytterbium', 'Yttrium', 'Zinc', 'Zirconium'];

    onSubmit() {
        alert('submitted with element: ' + JSON.stringify(this.model));
    }
}
