global class aktest {
    
    public String myval{set;get;}
    public List<Manager> mylist{set;get;}
    public Set<String> myset{set;get;}
    public Map<String,String> mymap{set;get;}
    public List<SelectOption> myoption{set;get;}
    public Map<String,List<String>> maplist{set;get;}
    public List<String> ak{set;get;}
    public Set<Manager> myset1{set;get;}
    public Integer x{set;get;}
    public Integer y{set;get;}
    public String  op{set;get;}
    public Integer result{set;get;}
    
    
	public aktest()
    {
        Manager m1=new Manager('mark',21,'8109356896');
        Manager m2=new Manager('simon',23,'9993465185');
        Manager m3=new Manager('mark',22,'9424739245');
    	mylist=new List<Manager>();
        mylist.add(m1);
        mylist.add(m2);
        
        myset1=new Set<Manager>();
        myset1.add(m1);
        myset1.add(m2);
       
               
        myset=new Set<String>();
        myset.add('Batsista ');
        myset.add('Undertaker');
        
        myoption=new List<SelectOption>();
        SelectOption s1=new SelectOption('null','none');
        SelectOption s2=new SelectOption('one','jan');
        SelectOption s3=new SelectOption('two','Feb');
        myoption.add(s1);
        myoption.add(s2);
        myoption.add(s3);
        
        mymap=new map<String,String>{'mi'=>'redmi4','one plus'=>'one plus 5','moto'=>'moto5'};
     /*   mymap.put('mi', 'redmi 4');
        mymap.put('one plus','one plus 5');
        mymap.put('moto','moto g5');*/
          
            ak=new List<String>{'ferrari','tesla','lambo'};
            maplist=new map<String,List<String>>();
        	for(String x:ak)
            {
   			maplist.put('apache' ,ak);
        	maplist.put('raptor',ak);
        	maplist.put('avetendor',ak);
        }
            
            
            }
    
    	global pageReference add()
        {
            result=x+y;
            op='Addition';
            return null;
        }
   	 
    	public pageReference sub()
        {
            result=x-y;
            op='Subtraction';
        	return null;
        }
    
    }