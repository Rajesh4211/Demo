public with sharing class TestController {
    @AuraEnabled
    public static string runTestClass(String testClassId){
        try {
            ApexClass[] testClasses = [SELECT Id FROM ApexClass WHERE Id =: testClassId];
if (testClasses.size() > 0) {
    ApexTestQueueItem[] queueItems = new List<ApexTestQueueItem>();

    for (ApexClass cls : testClasses) {
        queueItems.add(new ApexTestQueueItem(ApexClassId = cls.Id));
    }

    // Submit test classes for execution
    insert queueItems;

    // Wait for 5 seconds to allow the jobs to start
    //System.debug('Waiting for test jobs to start...');
    //System.sleep(5000);
    Long startTime = DateTime.now().getTime();
    Long finishTime = DateTime.now().getTime();
    while ((finishTime - startTime) < 9000) {
        //sleep for 9s
        finishTime = DateTime.now().getTime();
    }

    // Query for AsyncApexJob records for the submitted test classes
    List<AsyncApexJob> testJobs = [SELECT Id, JobType, Status, ExtendedStatus FROM AsyncApexJob WHERE JobType = 'ApexTestQueueItem' AND ParentJobId = NULL];

    // Loop through the test jobs and check the status
    for (AsyncApexJob job : testJobs) {
        if (job.Status == 'Completed' && job.ExtendedStatus == null) {
            // Test class ran successfully
            System.debug(job.Id + ' completed successfully');
            return job.Id + ' completed successfully';
        } else if (job.ExtendedStatus != null) {
            // Test class failed
            System.debug(job.Id + ' failed with message: ' + job.ExtendedStatus);
            return job.Id + ' failed with message: ' + job.ExtendedStatus;
        } else {
            // Test class is still running or in queue
            System.debug(job.Id + ' status: ' + job.Status);
            return job.Id + ' status: ' + job.Status;
        }
    }
}
           return null;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
}