public class EmailInsertTriggerHandlerClass 
{
	public static void insertemail()
    {
        Messaging.SingleEmailMessage m1= new  Messaging.SingleEmailMessage();
        list<string> TOAddresses= new list<string> {'rajeshlomte26@gmail.com'};
        list<string> CCAddresses= new list<string> {'rajeshlomte26@gmail.com'};
        
        m1.setToAddresses(TOAddresses);
        m1.setCcAddresses(CCAddresses);
        m1.setSubject('Hi');
        m1.setPlainTextBody('Hello');
        
        list<Messaging.Email> SE=new list<Messaging.Email> {m1};
        Messaging.sendEmail(SE);
        
    }
}