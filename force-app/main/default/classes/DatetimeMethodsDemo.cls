public class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
        Date birthDate = Date.newInstance(2003,11,7);
        Date todaysDate = date.today();

        Integer ageInMonths = birthDate.monthsBetween(todaysDate);
        system.debug('Your age in months : '+ageInMonths);


    }
    public void calculateAgeInDays(){
        Date birthDate = Date.newInstance(2003,11,7);
        Date todaysDate = date.today();

        Integer ageInDays = birthDate.daysBetween(todaysDate);
        system.debug('Your age in months : '+ageInDays);
    }
    public void printSubscriptionEndDate(){
        Date subscriptionDate = date.today();
        Date subscriptionEndDate = subscriptionDate.addDays(1000);
        
        system.debug('Your subscription end date : '+subscriptionEndDate);
        system.debug('Your subscription ends '+subscriptionEndDate.year()+' year');
        system.debug('Your subscription ends '+subscriptionEndDate.month()+' month');
    }
    public void printOfferEndDateTime(){
        Datetime offerStartDate = Datetime.now();
        Datetime offerEndDate = offerStartDate.addHours(51);

        system.debug('Your offer starts : '+offerStartDate);
        system.debug('Your offer ends : '+offerEndDate);
        system.debug('Your offer ends : '+offerEndDate.date());
    }
    public Boolean leapYearCheck(date dt){
        Integer year = dt.year();
        Boolean lp = date.isLeapYear(year);
        return lp;
    }


}