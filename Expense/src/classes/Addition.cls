public class Addition {

    public integer num1{get;set;}
    public integer num2{get;set;}
    public integer result{get;set;}
    
    
    public Pagereference add()
    {
        result=num1+num2;
        return null;
    }
    
    public Pagereference sub()
    {
        result=num1-num2;
        return null;
    }
    
    
}