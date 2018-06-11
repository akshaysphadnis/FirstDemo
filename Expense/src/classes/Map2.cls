public class Map2 {
    Map<String,List<String>> mybranch=new Map<String,List<String>>();
    
    public Map2()
    {
    	List<String> hyd = new List<String>();
    	hyd.add('ak');
    	hyd.add('akki');
		
        List<String> ngp=new List<String>();
        ngp.add('laxinagar');
        ngp.add('pratapnagar');
        mybranch.put('ngp',ngp);
    
    	List<String> Suv=new List<String>();
        Suv.add('Xuv');
        Suv.add('Creta');
        mybranch.put('Suv',Suv);
        
        Set<String> Keys=mybranch.keySet();
        
        for(String s:keys)
        {
            selectOption op=new SelectOption(s,s);
        }
        
       
    }

    
}