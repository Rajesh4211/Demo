trigger casetrigger on Case (before insert) 
{
    list<case> caselist=new list<case>();
for(case c:trigger.new)
{
    
    for(integer i=0;i<=700;i++)
    {
        case obj=new case();
        obj.status='new';
        obj.Origin='Phone';
       caselist.add(obj);
    }
    insert caselist;
}
}