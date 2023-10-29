public class Calculator {
    //public --->access modifier
    //void  --> return data type, does not return a value
    //() -->dont have any parameter
    public void welcomeMessage(){
        system.debug('Welcome to apex calculator');
        //private bir methodu publicin icine alarak yazdirabilirsin yani class disina cikarabilirsin
        printPrivateMessage();
    }

    public void printNewMessage(string msg){
        system.debug(msg);
    }
    public string printAndReturnMessage(string msg){
        system.debug(msg);
        string returnMsg = msg + '...Ok Cool';
        system.debug(returnMsg);
        return msg;
    }

    public Integer add(Integer a ,Integer b){
        Integer sum = a + b;
        system.debug(a+'+'+b+'='+sum);
        return sum;
    }
    public Boolean leapYearCheck(Date dt){
        Integer year = dt.year();
        Boolean lp = date.isLeapYear(year);
        if(lp == true){
            system.debug(year+' is a leap year');
        }else{
            system.debug(year+' is a not leap year');
        }
        return lp;
    }
    private void printPrivateMessage(){
        system.debug('this is a private msg');
    }

    public static integer add(list<integer> intList){

        integer returnInt = 0;
        for(Integer eachInt : intList){
            //returnInt e eachInt e ekle sonucu returInt e reassign et
            returnInt += eachInt;
            
        }
        system.debug('Sum of list = '+returnInt);
        return returnInt;
    }
}