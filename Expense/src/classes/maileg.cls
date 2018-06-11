public class maileg {

    public pageReference Show()
    {
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        String[] toaddress=new String[]{'aksp14@gmail.com'};
           msg.setToAddresses(toaddress);
       
      	String[] tobccaddress=new String[]{'akshay.phadnis14@gmail.com'};
        msg.setBccAddresses(tobccaddress);
        
        String[] toccaddress=new String[]{'ak@gmail.com'};
            msg.setCCAddresses(toccaddress);
        	msg.setSubject('Test');
        	msg.setplainTextBody('Hai ram');
        
        msg.setHtmlBody('<h1>This is the link for registration</h1>');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{msg});

            
        return null;
    }
    
    
}