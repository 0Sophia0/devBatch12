public class ListDemo {
    public static void candidatesList() {
        List<String> listCandidates = new List<String>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('Candidates are : '+listCandidates);


        String thirdCandidate = listCandidates.get(2);
        system.debug('Third person in the candidates list is : '+thirdCandidate);
        system.debug('I can also call like that '+ listCandidates.get(2));

    }

    public static void randomIntegerList() {
        List<Integer> listInteger = new List<Integer>();
        listInteger.add(15);
        listInteger.add(7);
        listInteger.add(20);
        listInteger.add(30);
        listInteger.add(35);

        system.debug('List of random integer : '+listInteger);

        Integer index3Value = listInteger[3];
        Integer index3Valuev2 = listInteger.get(3);

        system.debug('When you call like that : listInteger[3] : '+index3Value);
        system.debug('When you call like this : listInteger.get(3) : '+index3Valuev2);

        
    }

    public static String candidatesList(Integer i) {
        List<String> listCandidates = new List<String>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('Candidates are : '+listCandidates);
        String returnString;
        if(i<listCandidates.size()){
            system.debug('List size  : '+listCandidates.size());
            returnString = listCandidates[i];
            system.debug('You`ve returned this value : '+returnString);
        }else{
            returnString = 'No value found';
            system.debug('You`ve returned this value : '+returnString);
        }
        

        return listCandidates[i];

    }

    public static void allCats(){
        Cat falconsCat = new Cat ('Fluffkins' , 'white');
        Cat fatasCat = new Cat ('Simba' , 'brown');
        Cat dogasCat = new Cat ('Smokey' , 'gray');
        
        List<Cat> cats = new List<Cat>();
        cats.add(falconsCat);
        cats.add(fatasCat);
        cats.add(dogasCat);
        system.debug('Cats list : '+cats);
        
        if(!cats.isEmpty()){
            system.debug('Index 3 of this list :  '+cats[2]);
        }else{
            system.debug('You dont have cats');
        }
    }


}