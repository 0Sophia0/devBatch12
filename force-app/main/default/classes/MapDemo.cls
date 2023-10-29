public class MapDemo {
    public static String retrieveMotnth(Integer monthNumber) {
        String month = '';

        Map<Integer,String> monthsMap = new Map<Integer,String>();
        monthsMap.put(1,'January');
        monthsMap.put(2,'February');
        monthsMap.put(3,'March');
        monthsMap.put(4,'April');

        monthsMap.put(5,'May');
        monthsMap.put(6,'June');
        monthsMap.put(7,'July');
        monthsMap.put(8,'August');

        monthsMap.put(9,'September');
        monthsMap.put(10,'October');
        monthsMap.put(11,'November');
        monthsMap.put(12,'December');

        boolean keyExists = monthsMap.containsKey(monthNumber);
        if(keyExists){
            month = monthNumber+'th month is : '+monthsMap.get(monthNumber);
            System.debug(month);
        }else{
            month = 'No such month exits.Please try again';
            System.debug(month);
        }
       return month;
    }
}