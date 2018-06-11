public class AddSub {
     public integer a{get;set;}
    public integer b{get;set;}
    public integer c{get;set;}
    public pageReference add()
    {
		c=a+b;
		return null;         
    }
    public pageReference sub()
    {
        c=a-b;
        return null;
    }

}