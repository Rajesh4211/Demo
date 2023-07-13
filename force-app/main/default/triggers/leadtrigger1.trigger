trigger leadtrigger1 on Lead (after update) 
{
    list<Opportunity> oplist=new list<Opportunity>();
for(lead l:trigger.new)
{
    if(l.status=='Closed - Converted')
    {
        Opportunity op=new Opportunity();
        op.Name=l.Name;
        op.StageName='Prospecting';
        op.CloseDate=date.today();
        oplist.add(op);
                    
    }
}
    insert oplist;
    
    
}