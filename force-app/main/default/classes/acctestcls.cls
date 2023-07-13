public class acctestcls 
{
public acctestcls()
{
    list<account> acclist=[select id ,name,phone from account limit 5];
    system.debug('Account Record '+acclist);
}
}