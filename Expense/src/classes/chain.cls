public class chain implements Queueable {

   public List<Account> acclist=new List<Account>();
    public void execute(QueueableContext ab)
    {
    for(Integer i=0; i<10; i++)
    {	
        Account acc=new Account(name='mac'+i);
        acclist.add(acc);
    }
    insert acclist;

}
}