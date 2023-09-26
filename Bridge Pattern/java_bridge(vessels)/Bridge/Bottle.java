package Bridge;

public class Bottle extends Vessel{
    public Bottle(VesselContent vc) {
        super(vc);
    }

    @Override
    public void printInfo(){
        System.out.println("This is a bottle of " + super.content.getMaterial());
    }


}
