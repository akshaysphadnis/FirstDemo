public class selectexample {

    String[] countries=new String[]{};
        
    public pageReference test()
    {
        return null;
    }
    
    public List<SelectOption> getItems(){
        
        List<SelectOption> options=	new List<SelectOption>();
       	options.add(new SelectOption('Us','us'));
        options.add(new SelectOption('Canada','canada'));
        options.add(new SelectOption('Mexico','mexico'));
        
        return options;
    }
  public String[] getcountries()
    {
   			return countries;
        
    }
    
    public void setcountries(String[] countries)
    {
        this.countries=countries;
    }
    }