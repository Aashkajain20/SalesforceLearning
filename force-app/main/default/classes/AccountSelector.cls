public with sharing class AccountSelector {
    public static List<Account> getAccounts (
        Set<String> names, 
        Set<String> accountNumbers, 
        Set<String> phoneNumbers
    ) {
        return [
            SELECT Id, Name, AccountNumber, Phone 
            FROM Account 
            WHERE Name IN :names AND 
            AccountNumber IN :accountNumbers AND 
            Phone IN :phoneNumbers
            WITH USER_MODE
        ];
    }

}
