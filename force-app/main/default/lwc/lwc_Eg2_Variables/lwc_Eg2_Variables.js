import { LightningElement } from 'lwc';

export default class Lwc_Eg2_Variables extends LightningElement 
{
    name = 'Rajesh';
    age = 13;
    Branch = 'comp';
    rollno =12;

    callme()
    {
        this.name='om';
        this.age='25';
        this.Branch='IT';
        this.rollno='25';
    }
}