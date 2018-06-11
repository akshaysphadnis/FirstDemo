public class pranav {
    
    
    public String name{get;set;}
    public Integer phone{get;set;}
    public Account acc{get;set;}
    public pranav()
    {
        acc=new Account();
    }
    
    
    public Pagereference save()
    {
        upsert acc;
        return null;
    }

}