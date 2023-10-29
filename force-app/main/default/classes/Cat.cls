public  class Cat {
    public string name;
    public string color;

    public Cat() {
        system.debug('Name of a constructer : Cat   same with class name');
        system.debug('No return type.Not even void ');
        system.debug('For calling this method named constructer : Create instance of a class and thats it');
    }

    public Cat(String n, string clr){
        name = n;
        color =clr;
    }



}