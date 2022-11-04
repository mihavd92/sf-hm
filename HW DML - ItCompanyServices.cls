public class ItCompanyServices {
    public static Project createProject(Id clientId) {
        try {
            Project prj = new Project(Name = name);
            insert prj;
            return prj;
        } catch(DMLException e) {
            return Database.SaveResult;
        }
    }
    
    public static void Project_Assignment__c createProjectAssignment(Id projectId, Id developerId) {
        try {
            Project_Assignment__c cpa = new Project_Assignment__c (Id = id);
            insert cpa;
            return cpa;
        } catch(DMLException e) {
            
        }
    }
    
    public static void Project makeProjectBilliable(Id projectId) {
        if (IsBillable__c = true) {
        	try {
            	Project__c.Is_Billable__c mpb = new Project__c.Is_Billable__c (Id = id);
            	update mpb;	
            	return mpb;
        	} catch(DMLException e) {
        	}
        }
    }
    
    public static void Project deactivateProjects(Id projectId) {
        if (Project__c.Active__c = false) {
            try {
                Project__c.Active__c dprj = new Project__c (Id = id);
                delete dprj;
                return dprj;
            } catch(DMLException e) {
                
            }
        }
    }
    
    public static Developer createDeveloperAndAssign(String devName, Id projectId) {
        try {
            Project cdaa = new Developer(Name = name);
            insert cdaa;
            return cdaa;
        } catch(DMLException e) {
            return List<Database.SaveResult>;
        }
    }
    
}