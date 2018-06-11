public class Excon {

    public Contact[] myval{set;get;}
    
    public Excon()
    {
        Contact c1=new Contact(lastname='mysterio',phone='342323232');
        Contact c2=new Contact(lastname='jhon',phone='232423122');
        
        myval=new Contact[]{c1,c2};
    }
}