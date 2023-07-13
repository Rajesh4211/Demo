import { LightningElement } from 'lwc';

export default class Lwc_First extends LightningElement {
    Name='Rajesh';
    changeMe(event)
    {
        this.Name="Lomte";
    }
}