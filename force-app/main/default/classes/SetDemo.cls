public  class SetDemo {
    public static void citySet() {
        Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Sao Paulo');
        cities.add('Corum');
        cities.add('Rio de Janeiro');
        cities.add('Tokyo');
        cities.add('TOKYO');
        System.debug(cities);
     //Cikti da sadece bir kere Tokyo ve bir kere de TOKYO yazacak
      //Case sensitive oldugu icin TOKYO ve Tokyo farkli algilar
     //Duplicate valueye izin vermedigi icin 1 kere Tokyo yazar
        

    }

    public static Set<Integer> setFromList(list<Integer> intList){
        Set<Integer> intSet  =  new Set<Integer>();
        intSet.addAll(intList);
        return intSet;
    }

    public static Set<String> capitalizeSet(Set<String> setString){
        Set<String> returnSet = new Set<String>();
        
        for(String eachStr : setString){
            String tempStr = eachStr.capitalize();
            returnSet.add(tempStr);
        }
        return returnSet;
    }
}