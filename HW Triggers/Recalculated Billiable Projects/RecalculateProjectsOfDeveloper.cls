trigger RecalculateProjectsOfDeveloper on Developer__c (after insert) {
    if(trigger.isAfter && trigger.isInsert){
        RecalculateProjectsHandler.calculateNumberProjectsOnInsert(trigger.new);
    }
}
