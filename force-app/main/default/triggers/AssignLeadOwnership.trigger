trigger AssignLeadOwnership on Lead (before insert) {
    for(Lead newlead:Trigger.new)
    {
        if(newlead.LeadSource=='Web')
        {
            newlead.OwnerId='00112233xxxx';
        }
    }

}