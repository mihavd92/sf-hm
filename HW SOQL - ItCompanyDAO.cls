public class ItCompanyDAO {
    public static List<AvailableDevelopers> getAvailableDevelopers(String Id) {
        List<AvailableDevelopers> AvailableDevelopers = [SELECT
                                                         Id, Name
                                                         FROM Developers
                                                         WHERE Total_Billable_Projects__c < 5]
    }
   
    public static List<UnassignedDevelopers> getUnassignedDevelopers(String Id) {
        List<UnassignedDevelopers> UnassignedDevelopers = [SELECT
                                                           Id FROM Developers
                                                           WHERE Total_Billable_Projects__c = 0]
    }
   
    private static void getClients(String Name, String Id) {
        List<getClients> getClients = [SELECT Name FROM Client]
    }
   
    private static void getClientTotalActiveProjects() {
       
    }
   
    private static void getDeveloperTotalBilliableProjects() {
       
    }
}