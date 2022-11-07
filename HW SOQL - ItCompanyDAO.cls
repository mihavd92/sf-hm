public class ItCompanyDAO {
    public static List<List<SObject>> getAvailableDevelopers(String Id) {
        List<List<SObject>> AvailableDevelopers = new List<AvailableDevelopers>(
            [SELECT Id FROM Developer__c WHERE Total_Billable_Projects__c < 5]);
            return AvailableDevelopers;
    }
   
	public static List<List<SObject> getUnassignedDevelopers(String Id) {
        List<List<SObject> UnassignedDevelopers = new List<UnassignedDevelopers>(
            [SELECT Id FROM Developers WHERE Total_Billable_Projects__c == 0]);
            return UnassignedDevelopers;
    }
   
    public static List<List<SObject> getClients(String Name, String Id) {
        List<List<SObject> getClients = new List<getClients>([SELECT Name FROM Client]);
    }
   
    public static getClientTotalActiveProjects() {
       
    }
   
    public static getDeveloperTotalBilliableProjects() {
       
    }
}
