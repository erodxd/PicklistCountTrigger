trigger PicklistCountTrigger on Account (before insert) {

    Integer counter = 0;

    for (Account acc : Trigger.new) {

    }
}