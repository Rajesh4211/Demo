import { LightningElement, track } from 'lwc';
import childComponent from 'c/childComponent';

export default class ParentComponent extends LightningElement {
    @track parentMessage = 'Hello from Parent';

    handleChildClick(event) {
        const childMessage = event.detail;
        console.log('Child Clicked:', childMessage);        
}
}