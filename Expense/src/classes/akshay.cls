public class akshay implements Iterator<Account> {
    
    public List<Account> acc;
    public Integer i;
    public akshay()
    {
        acc=[select name from Account];
        i=100;
    }
    public boolean hasNext()
    {
        if(i>acc.size())
            return false;
        else
            return true;
    }
    
    public Account next()
    {
        if(i==0)
        return null;
        i++;
        return acc[i-1];
        
    }

}