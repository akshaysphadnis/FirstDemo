public class UpdateParentAccount implements queueable {
    
    private List<Account> recordid;
    private ID id;
    
    public UpdateParentAccount(List<Account> recordid,Id id)
    {
        this.recordid=recordid;
        this.id=id;
    }   
         
    public void execute(QueueableContext ctx)
    {
        for(Account acc:recordid)
        {
            acc.ParentId=id;
        }
        update recordid;
        
        system.enqueueJob(new chain());
    }

}