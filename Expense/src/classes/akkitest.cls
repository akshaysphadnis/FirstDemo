global class akkitest {

    public List<Manager> mylist{set;get;}
    public Set<String> myset{set;get;}
    public List<SelectOption> myoption{set;get;}   
    public String myval{set;get;}
    public Map<String,String> mymap{set;get;}
    public Map<String,List<String>> mymap1{set;get;}
    public List<String> ak{set;get;}
    
    public integer sum{get;set;}
    public integer x{set;get;}
    public integer y{set;get;}
    public integer minus{set;get;}
    public akkitest()
    {
        
       	Manager m1=new Manager('rahul',21,'9239239239');
        Manager m2=new Manager('akshay',44,'dsdsdsdsd');
        mylist=new List<Manager>();
        mylist.add(m1);
        mylist.add(m2);
        
        myset=new Set<String>();
        myset.add('pedro');
        myset.add('channing');
        
        SelectOption s1=new SelectOption('null','none');
        SelectOption s2=new SelectOption('one','Jan');
        SelectOption s3=new SelectOption('two','Feb');
        myoption=new list<SelectOption>();
        myoption.add(s1);
        myoption.add(s2);
        myoption.add(s3);
        
        mymap=new Map<String,String>();
        mymap.put('federerr','tennis');
        mymap.put('rossi', 'moto gp');
       
        mymap1=new Map<String,List<String>>();
        ak=new List<String>{'wew','ghh'};
        for(String x:ak)
        {
       	 	mymap1.put('aks',ak);
       	 	mymap1.put('akki',ak);
        }
    } 
        
        public pageReference add()
        {
          	   sum=x+y;
              return null;
            
        }
    	
    	public pageReference sub()
        {
            minus=x-y;
            return null;
        }
    	
        
        
}