trigger oppdelete on Opportunity (after update) {

    List<Account> acclist=[Select id,(Select id from opportunities where StageName='Closed won' OR StageName='Closed Lost') from Account];
   delete acclist; 
}