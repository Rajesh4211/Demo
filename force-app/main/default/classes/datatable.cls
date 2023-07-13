public with sharing class datatable 
{
    @AuraEnabled(Cacheable=true) 
   public static List<Account> accmethod()
   {
        return[select Id,Name,Phone,Industry from Account limit 5];
   }
}