SetDemo.citySet();
List<Integer> intList = new List<Integer>();
intList.add(7);
intList.add(11);
intList.add(2003);
intList.add(19);
intList.add(239);
intList.add(2003);

Set<Integer> setInteger = SetDemo.setFromList(intList);
system.debug('Set from List : '+setInteger);

Set<String> names = new Set<String>();
names.add('Fatma');
names.add('Burakhan');
names.add('Naciye');
names.add('Bahadir');

Set<String> upperCaseNames = SetDemo.capitalizeSet(names);
system.debug(upperCaseNames);
