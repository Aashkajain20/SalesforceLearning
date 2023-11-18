public with sharing class DuplicationService {
    public static void checkAccountDuplication(List<Account> accounts) {
        System.debug('coming stream' + accounts);
        Set<String> names = new Set<String>();
        Set<String> phoneNumbers = new Set<String>();
        Set<String> accountNumbers = new Set<String>();

        for (Account account : accounts) {
            names.add(account.Name);
            phoneNumbers.add(account.Phone);
            accountNumbers.add(account.AccountNumber);
        }

        // fetch previous records
        List<Account> previousAccounts = AccountSelector.getAccounts(names, accountNumbers, phoneNumbers);
        System.debug('database: '+ previousAccounts);
        for (Account account : accounts) {
            for (Account previousAccount : previousAccounts) {
                if (
                    account.Name == previousAccount.Name && 
                    account.Phone == previousAccount.Phone && 
                    account.AccountNumber == previousAccount.AccountNumber
                ) {
                    account.addError('Duplicate Account');
                }
            }
        }
    }
}
