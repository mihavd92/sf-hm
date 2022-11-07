public class RecalculateProjectsHandler {
    public static void calculateNumberProjectsOnInsert(List<Project__c> projectList) {
        Set<Id> developerIdSet = new Set<Id>();
        Map<Id, Developer__c> developerMap = new Map<Id, Developer__c>();
        for(Project__c projectObj:projectList) {
            if (projectObj.DeveloperId!=null) {
                developerIdSet.add(projectObj.DeveloperId);
            }
        }
        if(developerIdSet != null && developerIdSet.size()>0){
            for(AggregateResult agrResultObj:[
                SELECT COUNT(id) projCount, DeveloperId 
                FROM Project__c
                WHERE DeveloperId in:developerIdSet and id NOT IN:projectList GROUP BY DeveloperId]){
                    Developer__c devObj = new Developer__c();
                    devObj.Id = (Id)agrResultObj.get('DeveloperId');
                    devObj.Total_Billable_Projects__c = (Integer)agrResultObj.get('ProjCount');
                    developerMap.put(devObj.Id, devObj);
                }
            if (developerMap != null && developerMap.size()>0){
                update developerMap.values();
            }
        }
        
    }
}
