public with sharing class Searchoptionclass {
    
    public String str{get;set;}
    public List<Account> acclist{get;set;}
    public boolean available{get;set;}
    public boolean Flag{get;set;}
    public Searchoptionclass(ApexPages.StandardController controller)
    {
		Flag=false;    	  
    }
  
    public PageReference show()
    {
        // acclist=new List<Account>();
        acclist=[Select id,name,industry from Account where Name=:str];
        return null;
    }
    
    public boolean getavailable()
    {
        if(acclist.size()>0)
        {
            return true;
        }
        else
        {
			 ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, 'my error msg');
			 ApexPages.addMessage(myMsg);
         	return false;
        }
    }

      }