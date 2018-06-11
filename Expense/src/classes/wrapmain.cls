public class wrapmain {
    public List<Account> acclist{get;set;}
    public List<wrapsub> wraplist{get;set;}		
    public List<Account> listacc{get;set;}
    public wrapmain()
    {
        if(wraplist==null)
        {    
        acclist=[Select id,name,industry from Account];   
    	wraplist=new List<wrapsub>();
        for(Account a:acclist)
        {
            wraplist.add(new wrapsub(a));
        }
        system.debug(wraplist);
   	}
    }
    public void selected()
    {
        listacc = new list<Account>();
        for(wrapsub wp:wraplist)
        {
            if(wp.selected==true)
            {
                listacc.add(wp.ac);
            }
        }
    }
    
    
    
    public class wrapsub{
        
        public Account ac{get;set;}
        public boolean selected{get;set;}
        
        public  wrapsub(Account a)
        {
            this.ac=a;
            selected=false;
        }
        
    }

}