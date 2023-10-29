public class Calculator2 {
    //public --->access modifier
    //void  --> return data type, does not return a value
    //() -->dont have any parameter


    /*Instance a ihtiyac yok cunku instance i multiple datan oldugunda 
    kullanirsin.Burada insatnce a gerek yok*/
    public static void welcomeMessage(){
        system.debug('Welcome to apex calculator');
        //private bir methodu publicin icine alarak yazdirabilirsin yani class disina cikarabilirsin
        printPrivateMessage();
    }

    public static void printNewMessage(string msg){
        system.debug(msg);
    }
    public string printAndReturnMessage(string msg){
        system.debug(msg);
        string returnMsg = msg + '...Ok Cool';
        system.debug(returnMsg);
        return msg;
    }

    public static Integer add(Integer a ,Integer b){
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
    private static void printPrivateMessage(){
        system.debug('this is a private msg');
    }
}