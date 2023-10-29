//creating a class
public class primitiveDataTypeDemo {
    //creating a method
    public void  printBasicDataType() {
        system.debug('printing data types');
        //datatype  variable name       value
        string      batchName        =  'Falcons ';
        integer     totalCandidates  =  40;
        boolean     isAdminCompleted =  true;

        //print all of them using by --> system.debug

        string batchDescription = batchName + 'are the best';
        system.debug(batchDescription);
        system.debug('Total Candidates :'+totalCandidates);
        system.debug('Is admin completed? : '+isAdminCompleted);

        //decimal value 
        Decimal decValue  = 27.01;
        system.debug('Decimal value :'+decValue);

        //long value has  'L' in it
        Long longValue = 21548651L;
        system.debug('Long: '+longValue);

        //creating variables with object data type
        //YOU CAN STORE ANYTHING IN OBJECT
        Object obj = 'This is a string ';
        Object obj2 = 10;

        system.debug('First object :'+obj);
        system.debug('Second object :'+obj2);

        //ID represents Salesforce ID
        ID id1 = '003Hs00004gXUO3IAO';
        system.debug('Salesforce ID :'+id1);

}
    public void printNewDate(){
        system.debug('create new date instance : ');
        Date  newDate1  = Date.newInstance(1995, 2, 14);
        system.debug('new date is : ' + newDate1);
        Date  newDate2  = Date.newInstance(2023, 10, 14);
        system.debug('new date2 is : ' + newDate2);
        Date  todayDate  = Date.today();
        system.debug('todays date is : ' + todayDate);
}
    public void printNewTime(){
        Time myTime = Time.newInstance(18, 20, 2, 30);
        system.debug('my time is : '+myTime);

        Time meTime = Time.newInstance(15, 15, 2, 20);
        system.debug('me time is : '+meTime);
    }
    public void printNewDateTime(){
        date newDate = date.today();

        time newTime = time.newInstance(9,8,0,0);

        dateTime dt1 = Datetime.newInstance(newDate,newTime);
        system.debug('date is ' + dt1);

        Datetime dt2 = datetime.newInstance(2025,1,9);
        system.debug('dt 2 is ; '+dt2);

        datetime dt3 = Datetime.newInstance(2021,10,9,10,10,10);
        system.debug('dt 3 is : ' +dt3);

        Datetime dt4 = datetime.now();
        system.debug('Date and time now : ' +dt4);
    }
}  