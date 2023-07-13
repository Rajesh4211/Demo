public class CLSendEmail 
{
public static void sendEmail()
    {
	Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    list<string> TOaddress=new list<string>{'rajesh.lomte250@gmail.com'};
    list<string> CCaddress=new list<string>{'rajesh.lomte26@gmail.com'};
    mail.setToAddresses(TOaddress);
    mail.setCcAddresses(CCaddress);
    mail.setSubject('Contact is created Through Trigger');
    mail.setPlainTextBody('Hi');
    list<Messaging.Email> SE=new list<Messaging.Email>{mail};
    Messaging.sendEmail(SE);
    }
}