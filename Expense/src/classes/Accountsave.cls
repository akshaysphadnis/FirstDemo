public class Accountsave {
    
    public String inp{get;set;}
    public List<Account> acc{get;set;}
    public boolean show{get;set;}
    
    public PageReference Search()
    {
        acc=[Select id,name,industry from Account where name=:inp];
        
        if(acc.size()== null || acc.size()== 0)
        {
            apexpages.Message mymsg=new apexpages.Message(Apexpages.Severity.ERROR,'records not available');
        	apexpages.addMessage(mymsg);
        }
       
        return null;
    }
    
   /* public boolean getshow()
    {
        if(acc.size()>0)
        {
        return true;
        }
        else
        {
            
            return false;
        }
    }*/

}