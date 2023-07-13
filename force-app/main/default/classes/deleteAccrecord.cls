public class deleteAccrecord {

    @InvocableMethod(label='Delete Records')
    public static void deleteRecords(List<Id> recordIds) {
        // Delete the records
        List<contact> recordsToDelete = [SELECT Id FROM contact WHERE Id IN :recordIds];
        delete recordsToDelete;
    }


}