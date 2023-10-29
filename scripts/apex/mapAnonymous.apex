Map<String,String> mapCntCurrency = new Map<String,String>();
mapCntCurrency.put('USA','Dolar');
mapCntCurrency.put('Japan','Yen');
mapCntCurrency.put('France','Euro');
mapCntCurrency.put('Germany','Euro');
mapCntCurrency.put('India','Rupee');
mapCntCurrency.put('India','rs');
//Key duplica olamaz Bu yuzden sadece bir kere india yazar ve son degeri koyar
mapCntCurrency.put('Turkey','Lira');

system.debug('Map of country and currency : '+mapCntCurrency);

String IndiaCurrency = mapCntCurrency.get('India');
system.debug('Currency of India is  : '+IndiaCurrency);

Set<String> countrySet = mapCntCurrency.keySet();
system.debug(countrySet);

List<String> currencyList = mapCntCurrency.values();
system.debug(currencyList);

for(String eachKey : countrySet){
    String printString = 'Country is '+eachKey;
    string eachCurrency = mapCntCurrency.get(eachKey);
    printString += ', its currency is '+eachCurrency;
    system.debug(printString);
}

MapDemo.retrieveMotnth(15);
