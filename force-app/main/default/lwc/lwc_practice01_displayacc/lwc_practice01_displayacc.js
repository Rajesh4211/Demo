import { LightningElement,wire} from 'lwc';
import accmethod from '@salesforce/apex/datatable.accmethod';
export default class Lwc_practice01_displayacc extends LightningElement 
{
    colss=[
        { label: 'Name', fieldName: 'Name' },
          { label: 'Id', fieldName: 'Id'}
    ];

@wire(accmethod) Accounts;
}