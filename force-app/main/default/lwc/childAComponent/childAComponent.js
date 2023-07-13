import { LightningElement, api } from 'lwc';
import wrapperComponent from 'c/wrapperComponent';

export default class ChildAComponent extends LightningElement {
    @api childAMessage;
}