public class ItCompanyServices {
    public static Project__c createProject(String Id) {
        try {
            Project__c prj = new Project__c(Id = id);
            insert prj;
            return prj;
        } catch(DMLException e) {
            return null;
        }
    }
    
    public static Project_Assignment__c createProjectAssignment(String projectId, String developerId) {
        try {
            Project_Assignment__c cpa = new Project_Assignment__c (Id = projectId, Developer__c = developerId);
            insert cpa;
            return cpa;
        } catch(DMLException e) {
            return null;
        }
    }
    
    public static Project__c makeProjectBilliable(String projectId) {
        if (IsBillable__c = true) {
        	try {
            	Project__c.Is_Billable__c mpb = new Project__c.Is_Billable__c (Id = projectId);
            	update mpb;	
            	return mpb;
        	} catch(DMLException e) {
                return null;
        	}
        }
    }
    
    public static Project__c deactivateProjects(String projectId) {
        if (Project__c.Active__c = false) {
            try {
                Project__c.Active__c dprj = new Project__c (Id = projectId);
                delete dprj;
                return dprj;
            } catch(DMLException e) {
                
            }
        }
    }
    
    public static Developer__c createDeveloperAndAssign(String devName, String projectId) {
        try {
            Project cdaa = new Developer(Name = devName, Id = projectId);
            insert cdaa;
            return cdaa;
        } catch(DMLException e) {
            return List<Database.SaveResult>;
        }
    }
    
}
