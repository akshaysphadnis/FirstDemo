global class task1 {
	
    public List<Account> acc{set;get;}
	Date pdate=date.newInstance(2017,8,1);
    Date cdate=date.newInstance(2017,10,1);
    
    public pageReference show()
    {
    acc=[select CreatedById,name,a.CreatedDate,a.LastModifiedDate from Account a where a.CreatedDate>:pdate and a.CreatedDate<:cdate order by a.LastModifiedDate];
        return null;
    }
    
    
}