import { LightningElement,wire,api,track } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';



export default class Lwc_eg_createaccrecord extends LightningElement 
{
     nam;
     pho;
     indus;

     na(event)
     {
        this.nam=event.target.value;
     }

     ph(event)
     {
        this.pho=event.target.value;
     }

     ind(event)
     {
        this.ind=event.target.value;
     }

     callme()
     {
        const fields=[{'Name':this.nam,'Phone':this.ph,'Industry':this.indus}
              ];

        const recordData={apiName:'Account',fields};
        createRecord(recordData).then(response=>{
            alert('Record created sucessfully'+response.id);
        }).catch(error=>{
            alert('Record not created');
        });
     }
}