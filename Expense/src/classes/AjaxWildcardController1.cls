public class AjaxWildcardController1{
Public string inputtext{get;set;}
    Public List<account> accList{get;set;}
    Public boolean flagshow{get;set;}
    Public AjaxWildcardController1(){
    flagshow = false;
    }    
    
    Public void actionSupMethod(){
     system.debug('inputtext-->'+inputtext);
    String var='%'+inputtext+'%';
     accList = database.Query('select name,accountnumber from account where name like '+'\''+'%'+inputtext+'%'+'\'');
    //	acclist=[Select name,accountnumber from account where name like :inputtext];
        
    }
        

}