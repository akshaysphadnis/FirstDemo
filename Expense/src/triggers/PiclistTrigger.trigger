trigger PiclistTrigger on Account (before insert,before update) {
    
   for(Account acc:trigger.new)
   {
       if(acc.Rating!='Hot'||acc.Rating!='Cold'||acc.Rating!='Warm')
       {
            String error='no picklist value';
               acc.Rating.addError(error);
       }
   }
    

}