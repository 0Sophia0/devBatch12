public with sharing class SOQLDemo2 {
       //cHILD TO PARENT sadece parent.field from child yazman yeterli
       public static void childToParent_Soql1(){
        List<Contact> listCnt = [Select id, name, Account.Name from Contact WHERE Account.Industry = 'Energy'];
        for(Contact eachContact : listCnt){
            String accName = eachContact.Account.Name;
            system.debug('Contact name is : '+eachContact.Name+' its account is '+accName);
        }
    }

    //parent to child inner query kullanman lazim  Select Name,(Select name from childName parentin field ve rs kisminda yazan isim) from parentName
    public static void soqlParentToChild_1(){
        List<Account> accountWithOppList = new List<Account>();
        accountWithOppList = [Select Name, AnnualRevenue, (Select Name, Amount from Opportunities 
                                                           where StageName = 'Closed Won') from Account 
                                                           Where Type = 'Customer - Direct'];
         
         
                                                           for(Account acc : accountWithOppList){
        System.debug('Account Name : '+acc.Name+' and its annual revenue '+ acc.AnnualRevenue);
        List<Opportunity> listOpp = acc.Opportunities;
        if(!listOpp.isEmpty()){
            for(Opportunity opp : acc.Opportunities){
                system.debug('Opportunity name : '+opp.Name);
                system.debug('Opportunity amount : '+opp.Amount);
            }
        }else{
            system.debug('This account does not have opportunities as you want');
        }
        
         }
    }

    public static void soqlAdvanced(){
        List<AggregateResult> leadsGroupedByLeadSouce = [Select LeadSource, COUNT(Name) FROM Lead GROUP BY leadSource];

        List<AggregateResult> accWithDuplicateNames = [SELECT Name, Count(id) FROM Account GROUP BY Name Having Count(id)>1];
        
        List<AggregateResult> oppList = [SELECT SUM(Amount) FROM Opportunity WHERE isClosed = false];
        List<AggregateResult> oppListGroupedByStage = [SELECT SUM(Amount), stageName FROM Opportunity WHERE isClosed = false group by stageName];

        system.debug(leadsGroupedByLeadSouce);
        system.debug('------------------');
        system.debug(accWithDuplicateNames);
        system.debug('------------------');
        system.debug(oppList);
        system.debug('------------------');
        system.debug(oppListGroupedByStage);
        system.debug('------------------');

    }
}