trigger EnforceBusinessRule on Contact (before update) {
    for(Contact con:Trigger.new)
    {
        if(con.CustomField__c=='Certain Value')
        {
            con.addError('Business rule violation: CustomField__c cannot set to certain value');
        } 
    }
    

}