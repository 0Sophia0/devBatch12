RankHandler rk =new rankHandler();
String price1 = rk.rankPrice(1);
system.debug('price1 is : '+price1);

String price2 = rk.rankPrice(2);
system.debug('price2 is : '+price2);


String price3 = rk.rankPrice(3);
system.debug('price3 is : '+price3);


String price4 = rk.rankPrice(4);
system.debug('price4 is : '+price4);

String price5 = rk.rankPrice(15);
system.debug('price5 is : '+price5);


/// rank switch

RankHandler rkw =new rankHandler();
String price6 = rkw.rankPriceSwitch(1);
system.debug('price6 is : '+price6);

String price7 = rkw.rankPriceSwitch(3);
system.debug('price7 is : '+price7);


String price8 = rkw.rankPriceSwitch(8);
system.debug('price8 is : '+price8);


String price9 = rkw.rankPriceSwitch(2);
system.debug('price9 is : '+price9);

String price10 = rkw.rankPriceSwitch(15);
system.debug('price10 is : '+price10);