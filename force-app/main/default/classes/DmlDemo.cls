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

    public static void dmlUpdateDemo_2(){
        Account acc = [Select Id,name from Account limit 1 ];

        Contact con = new Contact();
        con.FirstName = 'New Contact From vs ';
        con.LastName = 'Helloooo';
        con.AccountId = acc.Id;

        insert con;
        system.debug('New contact created on this account : '+acc);

    }

    public static void dmlUpdateDemo_2_CO(){
        Salesforce_Project__c sp = [Select id,Name from Salesforce_Project__c ORDER BY createdDate DESC limit 1];

        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c='New salesforce ticket from vs code hi!';
        st.Salesforce_Project__c = sp.id;
        insert st;
    }

    public static void dmlMultipleRecordInsert(){
        list<Account> listAcc = new list<Account>();

        for(Integer i=0; i<10 ; i++){
            Account acc = new Account();
            acc.Name = 'Account from vs code multiple insert'+i;
            listAcc.add(acc);
        }
        insert listAcc;
    }

    public static void dmlMultipleRecordUpdate(){
        List<Account> listAcc = [Select id, name from Account  ORDER BY createdDate DESC limit 10];

        list<Account> updateList = new List<Account>();

        for(Account acc : listAcc){
            acc.Name = 'Updated Name';
            updateList.add(acc);
        }
        if(!updateList.isEmpty()){
            update updateList;
        }
       
    }
}
