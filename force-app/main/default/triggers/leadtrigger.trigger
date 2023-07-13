trigger leadtrigger on Lead (after update) 
{
for(lead l:trigger.new)
{
    if(l.Status=='Open - Not Contacted')
    {
        l.Status='Closed - Not Converted';
    }
}
}