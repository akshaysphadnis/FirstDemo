public with sharing class SearchJsclass {
    
    public List<Account> results{get;set;}
    public String searchstr{get;set;}
    
    public SearchJsclass()
    {
        results=new List<Account>();       
    }
    
    public PageReference doSearch()
    {
        String wrd='%'+searchstr+'%';
        results=[Select id,name,type,industry from Account where Name like:wrd];
        
        return null;
    }
    
    public PageReference clearResults()
    {
        results.clear();
        return null;
    }
    public boolean getresultsAvailable()
    {
        return (results.size()>0);
    }
    

}