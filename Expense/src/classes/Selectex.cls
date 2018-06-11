public class Selectex {
    public SelectOption[] myval{set;get;}
    
    public Selectex()
    {
        SelectOption a1=new SelectOption('null','none');
        SelectOption a2=new SelectOption('one','Jan');
        
        myval= new SelectOption[]{a1,a2};
    }

   
}