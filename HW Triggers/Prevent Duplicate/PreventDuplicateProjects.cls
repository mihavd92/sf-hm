trigger PreventDuplicateProjects on Project__c (before insert) {
	
    if (trigger.isInsert && trigger.IsBefore) {
        ProjectHandler.checkProjectsDuplicateRecord(trigger.new);
    }
}
