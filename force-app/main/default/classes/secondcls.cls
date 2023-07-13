public class secondcls 
{
@auraenabled
public static list<account> method()
{
  list<account> acclist=[select id,name,phone from account limit 5];
   return acclist; 
}
}