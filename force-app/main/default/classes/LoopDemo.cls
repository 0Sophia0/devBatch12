public class LoopDemo {
    public void print_int_while(Integer count) {
        while(count<=25){
            system.debug(count);
            count++;
        }
    }
    
    public void print_N_number(Integer n){
        for(Integer i=0; i<n ; i++){
            system.debug(i);
        }
    }

    public void print_N_Odd_numbers(Integer startNum , integer endNum){
        system.debug('Odd numbers between '+startNum+'-'+endNum + ' :');
        for(Integer i=startNum; i<=endNum; i++){
            integer modI = math.mod(i,2);
            if(modI == 1){
                system.debug(i);
            }
        }
    }
}