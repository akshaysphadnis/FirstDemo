public class Example
{
    
     public String  name;
     
        
        public string  getname()
        {
            return name;
        }
        public void setname(string name)
        {
            this.name=name;
        } 
    
    	public pageReference show()
        {
            name='The name is '+name;
            return null;
        }
    
   }