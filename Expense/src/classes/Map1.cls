public virtual class Map1 {

    public list<String> myresult{set;get;}
    Map<String,String> mymap;
        
    
    public Map1()
    {
       myresult=new list<string>();
       mymap=new Map<String,String>();
    	
        mymap.put('AXE', 'deo');
        mymap.put('Tommy','Perfume');
        mymap.put('Ponds','Powder');
     }
    public pageReference show()
    {
        myresult.clear();
        Set<String> Keys=mymap.keySet();
        myresult.addAll(keys);
        return null;
     }
    public pageReference display()
    {
		
        myresult=mymap.values();
        return null;
    }
    
}