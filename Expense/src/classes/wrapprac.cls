public class wrapprac {
    
    public List<wrapclass> listwrap{get;set;}
    public list<Account> acc{get;set;}
    public list<Account> acclist{get;set;}
    public account acct{get;set;}
 	public wrapprac()
    {
        if(listwrap==null)
        {
            acc=[Select id,name from account];
            listwrap=new List<wrapclass>();
            for(Account a:acc)
            {
                listwrap.add(new wrapclass(a));
            }
        }
        
    }
    public void selectclass()
    {
        acclist=new List<Account>();
        for(wrapclass act:listwrap)
        {
            if(act.selected==true)
            {
                acclist.add(act.a);
            }
        }
    }
  
    
    public class wrapclass
    {
        public Account a{get;set;}
        public boolean selected{get;set;}
        
        public wrapclass(Account acc)
        {
            this.a=acc;
            selected=false;
        }
    }
    
    public pageReference save()
    {
        try{
        	    upsert acct;
            	return null;
        	}
        catch(exception e)
        {
            String message='Data Base error during saving...';
            ApexPages.addMessage( new ApexPages.Message(ApexPages.Severity.ERROR, message));
            return null;
        }
        
    }
    

}