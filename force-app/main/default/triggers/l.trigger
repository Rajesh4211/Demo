trigger l on Lead (after update)
{
    list<contact> conlist=new list<contact>();
    list<account> acclist=new list<account>();
    list<opportunity> oplist=new list<opportunity>();
for(lead l:trigger.new)
{
    if(l.Status=='Closed - Converted')
    {
        contact conobj=new contact();
        conobj.LastName='abc';
        conlist.add(conobj);
        
        account aobj=new account();
        aobj.Name=l.LastName;
        acclist.add(aobj);
        
        opportunity oobj=new opportunity();
        oobj.Name=l.LastName;
        oobj.CloseDate=date.today();
        oobj.StageName='Prospecting Prospecting';
        oplist.add(oobj);
        
    }
   
}
    insert conlist;
    insert acclist;
    insert oplist;
}