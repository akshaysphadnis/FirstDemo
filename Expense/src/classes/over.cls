global class over {
    
    public List<Customer> result{set;get;}  
    public Set<String> st{set;get;}
    public List<SelectOption> City{set;get;}
    public List<SelectOption> Branch{set;get;}
    public over()
    {
        
        customer a=new customer('akshay',12);
        customer b=new customer('akki',7);
        result=new List<customer>();
        result.add(a);
		result.add(b);  
        
        st=new Set<String>();
        st.add('ak');
        st.add('akki');
        st.add('aks');
    	
        City=new List<SelectOption>();
        Branch=new List<SelectOption>();
        
    	SelectOption s1=new SelectOption('null','none');
        SelectOption s2=new SelectOption('one','ek');
        city.add(s1);
        city.add(s2);     
    }
}