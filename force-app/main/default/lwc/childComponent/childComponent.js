import { LightningElement, api } from 'lwc';
import ParentComponent from 'c/parentComponent';


export default class ChildComponent extends LightningElement {
    @api childMessage;

    handleClick() {
        const childEvent = new CustomEvent('childclick', {
            detail: 'Hello from Child',
        });
        this.dispatchEvent(childEvent);
    }
}