public class StringDemoClass {
    public void stringMethod1() {
        string sessionDescription = 'learning string methods in apex language';

        //1.lenght
        integer lengthjOfStr = sessionDescription.length();
        system.debug('length of the string is : '+lengthjOfStr);

        //2.toUpperCase
        system.debug('toUpperCase() method : '+sessionDescription.toUpperCase());

        //contains
        string searchWord1= 'apex';
        string searchWord2 = 'salesforce';
        boolean isContainApex= sessionDescription.contains(searchWord1);
        boolean isContainSalesforce= sessionDescription.contains(searchWord2);
        if(isContainApex == true){
            system.debug('String contains '+searchWord1);
        }else{
            system.debug('String does not contain '+searchWord1);
        }

        if(isContainSalesforce == true){
            system.debug('String contains '+searchWord2);
        }else{
            system.debug('String does not contain '+searchWord2);
        }

        //3.b  containIgnoreCase
        Boolean containsApex = sessionDescription.contains('Apex');
        system.debug('contains Apex? : '+containsApex);

        Boolean containsApex2 = sessionDescription.containsIgnoreCase('Apex');
        system.debug('contains ignore case Apex? : '+containsApex2);

    }
}