trigger RollupSum on Contact (after insert,after update,after Undelete,after delete) {
    Set<Id> setid=new Set<Id>();
   
    if(Trigger.isInsert||Trigger.isUndelete)
    {
        For(Contact con:trigger.new)
        {
            setid.add(con.AccountId);
        }
     }
    
    if(Trigger.isUpdate||Trigger.isDelete)
    {
        For(Contact con:trigger.old)
        {
            setid.add(con.AccountId);
        }
    }
    
    if(setid.size()>0)
    {
        RollupSumClass Roll=new RollupSumClass();
        Roll.RollupMethod(setid);
    }
    
}