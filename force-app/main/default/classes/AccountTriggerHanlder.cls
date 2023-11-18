public with sharing class AccountTriggerHanlder {
    public void beforeInsert(List<Account> accounts) {
        if (Trigger.isBefore && Trigger.isInsert) {
            DuplicationService.checkAccountDuplication(accounts);
        }
    }
    public void afterInsert(List<Account> accounts) {

    }
    public void beforeUpdate(List<Account> accounts) {
        if (Trigger.isBefore && Trigger.isUpdate) {
            DuplicationService.checkAccountDuplication(accounts);
        }
    }
    public void afterUpdate() {

    }
}
