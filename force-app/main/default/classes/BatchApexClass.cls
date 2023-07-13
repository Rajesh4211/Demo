public class BatchApexClass implements Database.Batchable<sObject>
{
	Public Database.QueryLocator start(Database.BatchableContext BC)
    {
        String Q='select id,Name from Account';
        return Database.getQueryLocator(Q);
       
    }
    
    Public Void Execute(Database.BatchableContext BC,List<Account> AC)
    {
        for(Account a:AC)
        {
            a.phone='111';
            update a;
        }
    }
        Public Void Finish(Database.BatchableContext BC)
        {
            
        }
    
}