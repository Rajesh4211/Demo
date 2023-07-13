trigger CopyBillingToShippingTrigger on Account (before update) {
    system.debug('Hi');
    for (Account acc : Trigger.new) {
        if (acc.CopyBillingToShipping__c == true) {
            system.debug('Hi');
            acc.ShippingStreet = acc.BillingStreet;
            acc.ShippingCity = acc.BillingCity;
            acc.ShippingState = acc.BillingState;
            acc.ShippingPostalCode = acc.BillingPostalCode;
        }
    }
}