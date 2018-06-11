public class actionfunctiontest {

    public String dummyString{get;set;}
    public List<Account> acclist{get;set;}
    
    Public PageReference getAccount()
    {
         accList = database.Query('select name,accountnumber from account where name like '+'\''+'%'+dummyString+'%'+'\'');
        
         return null;
    }
    
    
}