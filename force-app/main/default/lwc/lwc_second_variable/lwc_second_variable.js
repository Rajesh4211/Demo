import { LightningElement } from 'lwc';

export default class Lwc_second_variable extends LightningElement {
    Name='Rajesh';
    Age=23;
    Gender='male';

    onChanage(event)
    {
        this.Name='Mahesh';
        this.Age=35;
        this.Gender='male';
    }
}