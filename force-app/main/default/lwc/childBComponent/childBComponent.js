import { LightningElement, api } from 'lwc';
import WrapperComponent from 'c/wrapperComponent';

export default class ChildBComponent extends LightningElement {
    @api childBMessage;
}