trigger UpdateAccountField on Opportunity (after update) {
    Set<Id> accountsIdsToUpdate=new Set<Id>();
    for(Opportunity opp:Trigger.new)
    {
        if(opp.IsClosed && !Trigger.oldMap.get(opp.Id).IsClosed)
        {
            accountsIdsToUpdate.add(opp.AccountId);
        }
    }
    
    List <Account> account
    sToUpdate = [SELECT Id,CustomField__c FROM Account WHERE Id IN :accountsIdsToUpdate];
    for(Account acc: accountsToUpdate)
    {
        acc.CustomField__c=' Updated Value';
        
    }
    update accountsToUpdate;

}