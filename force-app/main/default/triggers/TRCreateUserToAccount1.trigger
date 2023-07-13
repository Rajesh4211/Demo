trigger TRCreateUserToAccount1 on User (after insert) 
{
    list<account> acclist=new list<account>();
    for(user u:trigger.new)
    {
        Account a=new Account();
        a.Name=u.LastName;
        acclist.add(a);
        system.debug(a);
    }
    insert acclist;
}