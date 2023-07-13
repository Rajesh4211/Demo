import { LightningElement, track } from 'lwc';
import childAComponent from 'c/childAComponent';
import childBComponent from 'c/childBComponent';


export default class WrapperComponent extends LightningElement {
    @track parentMessage = 'Hello from Wrapper';
}