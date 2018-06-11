public class Exarr {
   
    public Account[] myval{set;get;}
    
    public Exarr()
    {
        Account a1=new Account(name='ak',Industry='akinc');
        Account a2=new Account(name='apple',Industry='Energy');
        myval=new Account[]{a1,a2};
    }
}