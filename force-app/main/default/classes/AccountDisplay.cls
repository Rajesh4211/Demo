public class AccountDisplay 
{
    @AuraEnabled
	public static list<account> getAccount()
    {
        list<account> acclist=[select id,Name,Phone from account limit 10];
        return acclist;
    }
}