trigger caseobj on Case (before update)
{
for(case caseobj:trigger.new)
{
   if(trigger.newmap.get(caseobj.id).status!=(trigger.oldmap.get(caseobj.id).status))
      {
          
          caseobj.description=trigger.newmap.get(caseobj.id).status + trigger.oldmap.get(caseobj.id).status;
        
      }
      
}
}