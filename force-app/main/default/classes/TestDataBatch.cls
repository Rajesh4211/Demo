global class TestDataBatch implements Database.Batchable<Account>, Database.Stateful {
    global final Integer batchSize;
    global final Integer totalRecords;

    global TestDataBatch(Integer batchSize, Integer totalRecords) {
        this.batchSize = batchSize;
        this.totalRecords = totalRecords;
    }

    global Iterable<Account> start(Database.BatchableContext bc) {
        return new TestDataIterable(totalRecords);
    }

    global void execute(Database.BatchableContext bc, List<Account> scope) {
        List<Lead> leads = new List<Lead>();
        List<Contact> contacts = new List<Contact>();
        List<Opportunity> opportunities = new List<Opportunity>();

        for (Integer i = 0; i < scope.size(); i++) {
            Account acc = scope[i];

            // Create Lead
            Lead lead = new Lead();
            lead.FirstName = 'Test';
            lead.LastName = 'Lead ' + (i + 1);
            lead.Company = 'Test Company ' + (i + 1);
            lead.Email = 'testlead' + (i + 1) + '@example.com';
            leads.add(lead);

            // Create Contact
            Contact contact = new Contact();
            contact.FirstName = 'Test';
            contact.LastName = 'Contact ' + (i + 1);
            contact.AccountId = acc.Id;
            contact.Email = 'testcontact' + (i + 1) + '@example.com';
            contacts.add(contact);

            // Create Opportunity
            Opportunity opportunity = new Opportunity();
            opportunity.Name = 'Test Opportunity ' + (i + 1);
            opportunity.AccountId = acc.Id;
            opportunity.StageName = 'Prospecting';
            opportunity.CloseDate = System.today().addDays(i);
            opportunities.add(opportunity);
        }

        insert leads;
        insert contacts;
        insert opportunities;
    }

    global void finish(Database.BatchableContext bc) {
        System.debug('Test data creation completed.');
    }

    // Custom Iterable class
    public class TestDataIterable implements Iterable<Account> {
        private final Integer totalRecords;

        public TestDataIterable(Integer totalRecords) {
            this.totalRecords = totalRecords;
        }

        public Iterator<Account> iterator() {
            return new TestDataIterator(totalRecords);
        }
    }

    // Custom Iterator class
    public class TestDataIterator implements Iterator<Account> {
        private final Integer totalRecords;
        private Integer currentIndex;

        public TestDataIterator(Integer totalRecords) {
            this.totalRecords = totalRecords;
            this.currentIndex = 0;
        }

        public boolean hasNext() {
            return currentIndex < totalRecords;
        }

        public Account next() {
            currentIndex++;

            // Return a new Account instance
            Account acc = new Account();
            acc.Name = 'Test Account ' + currentIndex;
            acc.Description = 'Test Description ' + currentIndex;
            return acc;
        }
    }
}