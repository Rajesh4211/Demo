@IsTest
private class TestDataBatchTest {
    @IsTest
    static void testBatchExecution() {
        // Set the test data
        Integer batchSize = 5;
        Integer totalRecords = 10;

        try {
            // Create test data for the batch class
            List<Account> testAccounts = new List<Account>();
            for (Integer i = 1; i <= totalRecords; i++) {
                Account acc = new Account();
                acc.Name = 'Test Account ' + i;
                acc.Description = 'Test Description ' + i;
                testAccounts.add(acc);
            }
            insert testAccounts;

            // Instantiate the batch class
            TestDataBatch testDataBatch = new TestDataBatch(batchSize, totalRecords);

            // Start the batch execution
            Database.executeBatch(testDataBatch, batchSize);

            // Verify the results
            Integer expectedLeadCount = totalRecords * 2; // 2 Leads per Account
            Integer expectedContactCount = totalRecords;
            Integer expectedOpportunityCount = totalRecords;
            Integer expectedAccountCount = totalRecords;
            
            Integer actualLeadCount = [SELECT COUNT() FROM Lead];
            Integer actualContactCount = [SELECT COUNT() FROM Contact];
            Integer actualOpportunityCount = [SELECT COUNT() FROM Opportunity];
            Integer actualAccountCount = [SELECT COUNT() FROM Account];

            System.assertEquals(expectedLeadCount, actualLeadCount, 'Number of Leads is incorrect.');
            System.assertEquals(expectedContactCount, actualContactCount, 'Number of Contacts is incorrect.');
            System.assertEquals(expectedOpportunityCount, actualOpportunityCount, 'Number of Opportunities is incorrect.');
            System.assertEquals(expectedAccountCount, actualAccountCount, 'Number of Accounts is incorrect.');
        } catch (Exception e) {
            System.assert(false, 'An exception occurred: ' + e.getMessage());
        }
    }
}