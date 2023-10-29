public class Car {

    public string carColor = '';
    public string carName;
    //if we dont write access modifier default is private
    private Integer maxSpeed = 150;
    
    public void swithOn() {

        system.debug('starting the car');

    }

    public void drive(){
        system.debug('driving '+carName+', color is '+carColor);
    }

    public void driveAtMaxSpeed(){
        string drivingDescription = 'Driving ' + carName + ' at ' + maxSpeed + ' km/h';
        system.debug(drivingDescription);
    }
}