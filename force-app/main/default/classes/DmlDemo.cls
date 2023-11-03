public class DmlDemo {
    public static void dmlInsertDemo_stndObj(){
        Account acc = new Account();
        acc.Name = 'SoftInnovas';
        insert acc;
    
    }

    public static void dmlInsertDemo_cstmObj(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Teach Dml to falcons';
        sp.Description__c = 'All of them are great learners';
        insert sp;
    }

    public static void dmlUpdateDemo_1(){
        Account acc = new Account();
        acc.Name= 'SoftInnovas';
        insert acc;

        acc.name = 'Salesforce Inc';
        update acc;
    }

    public static void dmlUpdateDemo_3(){
        Account acc = [Select Id,name from Account WHERE name = 'SoftInnovas' limit 1];
        acc.name = 'SoftInnovas Inc';
        update acc;
        }
}