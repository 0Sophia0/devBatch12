public  class ForEachLoopDemo {
    public static void iterateIntegerList(){
        List<Integer> iterateList = new List<Integer>();
        iterateList.add(90);
        iterateList.add(7);
        iterateList.add(11);
        iterateList.add(2003);
        iterateList.add(19);
        iterateList.add(239);

        for(Integer eachInteger : iterateList){
            system.debug(eachInteger);
        }
    }
}