public class AccountInsert 
{
	@AuraEnabled
    public static account InsertAcc(account acc)
    {
        system.debug(acc);
		insert acc;
        return acc;
    }
}