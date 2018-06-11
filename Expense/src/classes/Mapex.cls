public class Mapex  {

    public String mycity{get;set;}
    Map<String,List<String>> mybranch=new Map<String,List<String>>();
    
    public List<SelectOption> city{set;get;}
    public List<SelectOption> Branch{set;get;}
    
    public Mapex()
    {
        List<String> ak=new List<String>();
        ak.add('himachal');
        ak.add('maharashtra');
        List<String> lang=new List<String>();
        lang.add('hindi');
        lang.add('marathi');
        
        mybranch.put('ak', ak);
        mybranch.put('lang',lang );
        
        Set<String> Keys=mybranch.keySet();
        
        city=new List<SelectOption>();
        branch=new List<SelectOption>();
        
        city.add(new SelectOption('null','None'));
        
        List<String> my=new List<String>();
        my.add('None');
        for(String a:keys)
        {
            SelectOption op1=new SelectOption(a,a);
            City.add(op1);
            
            
        }
        
   }
    public  pageReference show()
        {
            List<String> bran=mybranch.get(mycity);
            bran.clear();
            for(String x:bran)
            {
                SelectOption op1=new SelectOption(x,x);
                branch.add(op1);
            }
            return null;
        
        
    
            }
    
}