public class insertacc 
{
@auraenabled
    Public static account method(string str)
    {
        system.debug('Value of str'+str);
        account a=new account();
        a.Name=str;
        insert a;
        return a;
    }
}