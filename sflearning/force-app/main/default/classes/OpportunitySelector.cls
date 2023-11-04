public with sharing class OpportunitySelector {
    public static List<Opportunity> getOpportunities () {
        return [SELECT Id, Name FROM Opportunity WITH USER_MODE];
    }
}
