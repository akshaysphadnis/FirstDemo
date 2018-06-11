public class wrapperdeletemain {
    
    public List<wrapperdeletesub> wrapperlist{get;set;}
    public List<Account> acclist;
    public List<Account> del;
    public List<Account> listacc{get;set;}
    public boolean v; 
    public wrapperdeletemain()
    {
        acclist=[Select id,name,industry from Account];
        wrapperlist=new List<wrapperdeletesub>();
        for(Account acc:acclist)
        {
            
            wrapperlist.add(new wrapperdeletesub(acc));
        }

        system.debug(wrapperlist);
    }
    
    public PageReference selectedmethod()
    {
        listacc=new list<Account>();
        
        for(wrapperdeletesub act:wrapperlist)
        {
            if(act.selected==true)
            {
                listacc.add(act.a);
            }
        }	
        delete listacc;
        return null;
    }
    
    
    public class wrapperdeletesub{
        
        public Account a{get;set;}
        public  boolean selected{get;set;}
        public  wrapperdeletesub(Account a)
        {
            this.a=a;
            selected=false;
        }
        
        
    }
    

}