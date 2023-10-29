Calculator cl = new Calculator();
cl.welcomeMessage();
cl.printNewMessage('Hello');
string message ='Print this';
cl.printNewMessage(message);
cl.printAndReturnMessage('Print this ASAP');
cl.add(78, 96);
date newDate = date.newInstance(2016, 4, 4);
boolean lpCheck = cl.leapYearCheck(newDate);

List<Integer> intList = new List<Integer>();
intList.add(7);
intList.add(11);
intList.add(2003);
intList.add(19);
intList.add(239);

Calculator.add(intList);