import Bridge.*;

public class Main {


    public static void main(String[] args){

        Vessel vessel = new Bottle(new Fanta());
        Vessel vessel2 = new Barrel(new Water());

        vessel.printInfo();

        vessel2.printInfo();

    }
}
