public class AmountupdatedHandlerClass 
{
    public static void oopmethod(List<Opportunity> newopplist, Map<Id,Opportunity> oldaccMap)
    {
        for(Opportunity opp:newopplist)
        {
            if(opp.Amount != oldaccmap.get(opp.id).amount)
            {
                opp.Amount_Change__c=true;
            }
        }    
        
    }    
}