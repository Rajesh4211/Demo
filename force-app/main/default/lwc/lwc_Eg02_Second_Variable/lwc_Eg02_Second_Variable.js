import { LightningElement } from 'lwc';

export default class Lwc_Eg02_Second_Variable extends LightningElement 
{
    name='Rajesh';
    age=23;
    city='Pune';

    changeme()
    {
        this.name='Sunil';
        this.age=37;
        this.city='Hyd';
    }
}