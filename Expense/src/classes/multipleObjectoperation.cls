public class multipleObjectoperation 
{
    public string posName{get;set;}
    public integer posMax_Pay{get;set;}
    public integer posMin_Pay{get;set;}
    public string canFirstName{get;set;}
    public string canLastName{get;set;}
    public string canEmail{get;set;}
        
   public pagereference Insertdata()
  {
     Position__c pos = new Position__c();
     Candidate__c can = new Candidate__c();
      
      pos.Name = posName;
      pos.Max_Pay__c = posMax_Pay;
      pos.Min_Pay__c = posMin_Pay;
      
     can.FirstName__c = canFirstName;
     can.LastName__c = canLastName;
     can.Email__c = canEmail ;   
      
     insert pos;
     insert can; 
      
     return null;
  }
      
}