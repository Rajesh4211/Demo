import { LightningElement,wire} from 'lwc';
import accmethod from '@salesforce/apex/datatable.accmethod';
const cols=[
        {lable:'ID', keyField:'Id'},
        {lable:'Name', keyField:'Name'},
        {lable:'Phone', keyField:'Phone'},
        {lable:'Industry', keyField:'Industry'}

     ];
export default class Lwc_eg_datatable extends LightningElement 
{
    col=cols;
    @wire(accmethod) Account;
}