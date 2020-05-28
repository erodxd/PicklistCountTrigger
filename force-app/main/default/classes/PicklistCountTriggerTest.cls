
@isTest
private class PicklistCountTriggerTest {

    @isTest static void addNewAccountWithComptetitors() {
        
        Account acc = new Account();

        acc.Name = 'Test123';
        acc.Competition__c  = 'Salesforce;Oracle;Google;Amazon;Microsoft';
        insert acc;
    }
    
    @isTest static void addSecondAccountWithComptetitors() {
        
        Account acc = new Account();

        acc.Name = 'Test124';
        acc.Competition__c  = null;
        insert acc;
    }
}
