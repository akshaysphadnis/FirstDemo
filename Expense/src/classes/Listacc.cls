public class Listacc {

    public List<Account> result{set;get;}
    
    
    public Listacc()
    {
        Account c1=new Account(name='akshay',industry='Banking');
        Account c2=new Account(name='Deven',industry='Energy');
        result=new List<Account>();
        result.add(c1);
        result.add(c2);
    }
    
    
}