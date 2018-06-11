public class overload
{
    public void walk()
    {
        system.debug('walk runs');
        this.walk(10);
    }
    
   public void walk(integer speed)
    {
        system.debug('walks integer runs');
        this.walk(10,'aks');
        
    }
    
    public void walk(integer speed,string name)
    {
        
        system.debug('walk with integer and string runs');
        this.show();
    }
    
  public  void show()
    {
        system.debug('shiw runs');
    }

}