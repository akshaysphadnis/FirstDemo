public class pracpageclass {
    
    public account acc{get;set;}
    public pracpageclass()
    {
        acc=new Account();
    }

    public pageReference save()
    {
        insert acc;
        return null;
    }
}