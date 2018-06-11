public class Managerex {

    
    public List<Manager> result{set;get;}
    public List<SelectOption> mylist{set;get;}
    public String myval{set;get;}
    public Managerex()
    {	
        result=new List<Manager>();
        Manager a1=new Manager('Ben',12);
        Manager a2=new Manager('Leo',14);
        
        result.add(a1);
        result.add(a2);  
        
        SelectOption b1=new SelectOption('null','none');
        SelectOption b2=new SelectOption('one','Monday');
        mylist=new List<SelectOption>();
        mylist.add(b1);
        mylist.add(b2);
        
    }
}