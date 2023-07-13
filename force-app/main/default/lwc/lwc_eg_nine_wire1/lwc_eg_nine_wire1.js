import { LightningElement,api } from 'lwc';
import MYOBJECT from '@salesforce/schema/Account';
import MYFILELDS_NAME from '@salesforce/schema/Account.Name';
import MYFILELDS_PHONE from '@salesforce/schema/Account.Phone';
import MYFILELDS_INDUSTRY from '@salesforce/schema/Account.Industry';
export default class Lwc_eg_nine_wire1 extends LightningElement 
{
    myobject=MYOBJECT;
    myfields=[MYFILELDS_NAME,MYFILELDS_PHONE,MYFILELDS_INDUSTRY];
}