public with sharing class createaccwire 
{
   @AuraEnabled
   public static string createacc(string fname)
   {
    try 
    {
        Account a=new Account();
        a.Name=fname; 
        Insert a;
        return fname;  
    }
     catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }
}