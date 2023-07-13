import { LightningElement } from 'lwc';

export default class Lwc_eg_output extends LightningElement 
{
    name='Rajesh';
    age=34;
    
    callme()
    {
        this.name='om';
        this.age=28;
    }
}