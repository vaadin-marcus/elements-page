import {Component} from '@angular/core';
import {VaadinComboBox} from '../../../bower_components/vaadin-combo-box/directives/vaadin-combo-box';

@Component({
    selector: 'my-combo-box-basic-component',
    template: `
    <div class="fieldset">
      <vaadin-combo-box label="Language" [items]="languages" [(value)]="selectedLanguage"></vaadin-combo-box>
      <vaadin-combo-box label="Skill Level" [items]="skillLevels" [(value)]="selectedSkillLevel"></vaadin-combo-box>
    </div>
  `,
    directives: [VaadinComboBox],
    styles: [`
    vaadin-combo-box {
        max-width: 300px;
    }
  `]
})
export class MyComboBoxBasicComponent {
    selectedLanguage = '';
    selectedSkillLevel = 'Beginner';

    languages = [
    'Afrikaans', 'Albanian', 'Amharic', 'Arabic', 'Armenian', 'Basque', 'Bengali',
    'Byelorussian', 'Burmese', 'Bulgarian', 'Catalan', 'Czech', 'Chinese', 'Croatian',
    'Danish', 'Dari', 'Dzongkha', 'Dutch', 'English', 'Esperanto', 'Estonian', 'Faroese',
    'Farsi', 'Finnish', 'French', 'Gaelic', 'Galician', 'German', 'Greek', 'Hebrew',
    'Hindi', 'Hungarian', 'Icelandic', 'Indonesian', 'Inuktitut (Eskimo)', 'Italian',
    'Japanese', 'Khmer', 'Korean', 'Kurdish', 'Laotian', 'Latvian', 'Lappish', 'Lithuanian',
    'Macedonian', 'Malay', 'Maltese', 'Nepali', 'Norwegian', 'Pashto', 'Polish',
    'Portuguese', 'Romanian', 'Russian', 'Scots', 'Serbian', 'Slovak', 'Slovenian',
    'Somali', 'Spanish', 'Swedish', 'Swahili', 'Tagalog-Filipino', 'Tajik', 'Tamil', 'Thai',
    'Tibetan', 'Tigrinya', 'Tongan', 'Turkish', 'Turkmen', 'Ucrainian', 'Urdu', 'Uzbek',
    'Vietnamese', 'Welsh'];

    skillLevels = ['Beginner', 'Intermediate', 'Advanced', 'Professional', 'Native'];
}
