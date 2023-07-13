import { LightningElement,track } from 'lwc';

export default class Lwc_Eg_Calc extends LightningElement 
{
    @track resval;
    num1;
    num2;
   
callme(event)
{
const evtvar= event.target.name;
if(evtvar=='aval')
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
    this.resval='addition' + (a + b);
}
}