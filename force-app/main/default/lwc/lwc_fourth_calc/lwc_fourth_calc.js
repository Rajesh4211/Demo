import { LightningElement } from 'lwc';

export default class Lwc_fourth_calc extends LightningElement {
    num1;
    num2;
    resultval;
    callMe(event)
    {
        const evtname=event.target.name;
        if(evtname=='aval')
        {
            this.num1=event.target.value;
        }
        else if(evtname=='bval')
        {
            this.num2=event.target.value;
        }

    }
    addMe()
    {
        const a=parseInt(this.num1);
        const b=parseInt(this.num2);
        this.resultval=a+b;
    }
}