import { LightningElement } from 'lwc';

export default class Lwc_Eg_fourth_Calc extends LightningElement 
{
    num1;
    num2;    
    resultval;
    callme(event)
    {
        const entvar=event.target.name;
        if(entvar=='aval')
        {
            this.num1=event.target.value;
        }
        else
        {
            this.num2=event.target.value;
        }
    }

    add()
    {
        const a=parseInt(this.num1);
        const b=parseInt(this.num2);
        this.resultval="sum of given number"+(a+b);

    }

    mul()
    {
        const a=parseInt(this.num1);
        const b=parseInt(this.num2);
        this.resultval="mul of given number"+(a*b);

    }

    sub()
    {
        const a=parseInt(this.num1);
        const b=parseInt(this.num2);
        this.resultval="Sub of given number"+(a-b);

    }
}