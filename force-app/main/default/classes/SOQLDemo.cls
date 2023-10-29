public class SOQLDemo {
    public static void accountSOQL_1(){
        //SOQL query always returns the List<sObject>

        //Account which has name started with a 
        List<Account> listAcc = [Select ID, Name from Account WHERE Name like 'A%'];
        system.debug('Account list  : '+listAcc);
    }
    
    public static void accountSOQL_2(){
        
        Account acc = [Select ID,Name,Phone , AccountNumber from Account Order By CreatedDate desc LIMIT 1 ];
        system.debug('latest account created : '+acc);

        String accName = acc.Name;
        String accPhone = acc.Phone;
        system.debug('accName : '+ accName + ',phone is '+accPhone);
    }

    public static void accountSOQL_3(){
        List<Account> accList = [Select Id, Name ,Phone ,AccountNumber from Account Order By CreatedDate desc];

        system.debug('All acounts'+accList);

        for(Account acc : accList){
            String accName = acc.Name;
            String accPhone = acc.Phone;
            system.debug('Acc Name is :'+accName+'Acc phone is: '+accPhone+' Account Number : '+acc.AccountNumber);

        }
    }

    public static void soqlDemo_Filter(){
        String accNameFilter = 'Salesforce Inc.';
        List<Account> listAcc = [Select id, Name From Account Where Name = :accNameFilter];
        system.debug(listAcc);
    }

    public static void soqlDemo_Filter(String accNameFilter){
        List<Account> listAcc = [Select id, name from account where name = :accNameFilter];
        system.debug(listAcc);

    }

    //Bir listedeki kisileri aramak icn(dinamik olur) name in 
    public static void soqlDemo_Filter(List<String> accNames){
        List<Account> listAcc = [Select id, name from account where name IN :accNames];
        system.debug(listAcc);

    }
 
    
}