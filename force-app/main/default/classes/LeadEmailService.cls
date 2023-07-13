global class LeadEmailService implements Messaging.InboundEmailHandler {
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
        Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();

        try {
            Lead newLead = new Lead();
            newLead.FirstName = email.plainTextBody.substringBetween('First Name:', '\n');
            newLead.LastName = email.plainTextBody.substringBetween('Last Name:', '\n');
            newLead.Email = email.fromAddress;
            newLead.Industry = email.plainTextBody.substringBetween('Industry:', '\n');
            newLead.Company = email.plainTextBody.substringBetween('Company:', '\n');
            newLead.City = email.plainTextBody.substringBetween('City:', '\n');
            newLead.State = email.plainTextBody.substringBetween('State/Province:', '\n');
            newLead.Phone = email.plainTextBody.substringBetween('Phone:', '\n');

            insert newLead;

            result.success = true;
        } catch (Exception ex) {
            result.success = false;
            result.message = 'Error processing email: ' + ex.getMessage();
        }

        return result;
    }
}