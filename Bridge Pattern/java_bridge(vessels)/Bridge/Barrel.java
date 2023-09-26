package Bridge;

public class Barrel extends Vessel{
    public Barrel(VesselContent vc) {
        super(vc);
    }

    @Override
    public void printInfo(){
        System.out.println("This is a barrel of " + super.content.getMaterial());
    }

}
