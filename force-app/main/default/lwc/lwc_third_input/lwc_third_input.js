import { LightningElement } from 'lwc';

export default class Lwc_third_input extends LightningElement {
    name='rajesh';
    age=23;

    saveMe()
    {
        this.name='Sunil';
        this.age=25;
    }
}