public class ProjectHandler {

    public static void checkProjectsDuplicateRecord(List<Project__c> ProjectList) {
        try {
            set<string> projectSet = new Set<string>();
            set<string> developerSet = new Set<string>();
            for (Developer__c Total_Billable_Projects__c:developerProjectsList) {
                developerSet.add(developerProjectsList.Developer__c);
                projectSet.add(Total_Billable_Projects__c.Project__c);
            }
            List<Developer__c.Total_Billable_Projects__c> developerProjectsList = [
                SELECT Developer__c FROM Project__c WHERE Project__c IN:projectSet
                AND developerSet IN:developerSet
            ];
            if (ProjectList.size()>0){
                ProjectList[0].addError(developerProjectsList[0].Project__r.Name + 'Project already assigned.')
            }
        } catch(exception ex) {
            throw ex;
        }
    }
}
