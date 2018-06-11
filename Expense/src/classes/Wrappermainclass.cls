public class Wrappermainclass {
    
    public list<wrapperclass> wrapperlist{get;set;}
    public list<Account> acc{get;set;}
    public List<Account> acclist{get;set;}
    public Wrappermainclass()
    {	
       
        if(wrapperlist==Null)
        {
            acc=[Select id,name,industry from Account];
             wrapperlist=new list<wrapperclass>();
            for(Account a:acc)
            {
               wrapperlist.add(new wrapperclass(a));
            }
        }
        system.debug(wrapperlist);
        
   }
     	public void selectedacc()
        {
            acclist=new List<Account>();
            for(wrapperclass w:wrapperlist)
            {
                if(w.selected==true)
                {
                    acclist.add(w.acc);
                }
            }
        }
    
    
    
    public class wrapperclass{
        
        public Account acc{get;set;}
            public boolean selected{get;set;}
        
        public wrapperclass(Account a)
        {
            this.acc=a;
            selected=false;
            
        }
        
        
    }

}