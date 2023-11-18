trigger AccountTrigger on Account (before insert, before update) {
    AccountTriggerHanlder handler = new AccountTriggerHanlder();
    handler.beforeInsert(Trigger.new); // List<Account>
    handler.beforeUpdate(Trigger.new);
}   
