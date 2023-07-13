import { LightningElement } from 'lwc';

export default class Lwc_Eg_input extends LightningElement 
{
    name='Rajesh';
    phone='1234';

    callme()
    {
        this.name='om';
        this.phone=123;
    }
}