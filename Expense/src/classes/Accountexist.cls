public class Accountexist {
    
    public string myname{get;set;}
    public boolean rend{get;set;}
    //public ApexPages.StandardController Controller;
    list<Account> acc=new list<Account>();
    //Account ak =new Account();
    public Accountexist(Apexpages.StandardController controller)
    {
    
    }
    public PageReference ins()
    {
             PageReference pr = new PageReference('https://ap5.salesforce.com/001/e?retURL=%2F001%2FoW');
   			 pr.setRedirect(true);
        	 return pr;

    }
  public PageReference show()
  {
   list<Account> acc =[select id,name from account where name=:myname];
     if(acc.size()>0)
     {
    	PageReference p=Apexpages.currentPage();
    	Apexpages.Message message = new ApexPages.Message(ApexPages.Severity.CONFIRM,'Record Exist');
        ApexPages.addMessage(message);
       	return p;
      }	
      else
      {
          PageReference q=Apexpages.currentPage();
          Apexpages.Message message=new Apexpages.Message(ApexPages.Severity.FATAL,'Record does not exist');
      	  Apexpages.addMessage(message);
          rend=true;
          return q;
          
      }
      return null;  
   }     
}