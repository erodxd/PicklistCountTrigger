trigger PicklistCountTrigger on Account (before insert, before update) {

    Integer counter = 0;

    List<String> selectedValues = new List<String>();
    //List<Lead> disqualifiedLeads = new List<Lead>()


    for (Account acc : Trigger.new) {

        // Competition contains any of the selected values, add it to the selected values list
            
        if (acc.Competition__c != null) {
            if (acc.Competition__c.contains('Microsoft')) {
                selectedValues.add('Microsoft');
            } if (acc.Competition__c.contains('Salesforce')) {
                selectedValues.add('Salesforce');
            } if (acc.Competition__c.contains('Oracle')) {
                selectedValues.add('Oracle');
            } if (acc.Competition__c.contains('Google')) {
                selectedValues.add('Google');
            } if (acc.Competition__c.contains('Amazon')) {
                selectedValues.add('Amazon');
            } 
        } else if (acc.Competition__c == null) {
            selectedValues.clear();
        }
            // count size of list, Counter field = size of list
            counter = selectedValues.size();
            acc.Counter__c = counter;
    }
}