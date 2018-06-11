trigger accoppdelete on Account (after update) {

    
    List<Account> acclist=[Select id,(Select id from opportunities where StageName='Closed won' OR StageName='Closed Lost') from Account];
    //List<Account> acclist=[Select id,(Select id from opportunities where StageName=='Closed won') from Account];
    delete acclist;
}