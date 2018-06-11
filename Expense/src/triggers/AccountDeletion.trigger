trigger AccountDeletion on Account (before delete) 
{
    for(Account a:[SELECT id from Account WHERE Id IN (SELECT AccountId from Opportunity) AND ID IN:Trigger.old])
    {
        Trigger.oldMap.get(a.Id).addError('Cannot delete account with related opportunities.');
    }

}