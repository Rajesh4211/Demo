import { LightningElement, track } from 'lwc';

export default class TestClassStatus extends LightningElement {
    @track showSpinner = false;
    @track showModal = false;
    @track modalTitle = '';
    @track modalMessage = '';

    runTest() {
        this.showSpinner = true;

        // Call Apex method to run test class
        runTestClass()
            .then(result => {
                this.showSpinner = false;

                if (result === 'Pass') {
                    this.modalTitle = 'Test Passed';
                    this.modalMessage = 'The test class passed successfully.';
                } else if (result === 'Fail') {
                    this.modalTitle = 'Test Failed';
                    this.modalMessage = 'The test class failed. Please check the logs for details.';
                } else {
                    this.modalTitle = 'Test Status';
                    this.modalMessage = 'The test class is still running. Please check again later.';
                }

                this.showModal = true;
            })
            .catch(error => {
                console.error(error);
                this.showSpinner = false;
                this.modalTitle = 'Error';
                this.modalMessage = 'An error occurred while running the test class. Please try again later.';
                this.showModal = true;
            });
    }

    closeModal() {
        this.showModal = false;
    }
}

// Apex method to run test class
import runTestClass from '@salesforce/apex/TestController.runTestClass';