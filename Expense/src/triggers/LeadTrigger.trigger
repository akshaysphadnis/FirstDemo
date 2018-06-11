trigger LeadTrigger on Lead (before insert,Before update) {
    
   for(Lead mylead:Trigger.new)
   {
       if(mylead.Email!=null)
       {
           List<Contact> con=[Select id from contact where Email=:mylead.Email];
           if(con!=null&&con.size()>0)
           {	
              
               String error='Duplicate lead';
               mylead.addError(error);
           }
           
       }
   }
    
    

}