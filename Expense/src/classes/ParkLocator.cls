public class ParkLocator {

    public static String[] country(String a)
    {
         ParkService.ParksImplPort  park=new ParkService.ParksImplPort();
        
        String[] parksname = park.byCountry(a);
        return parksname;
        
    }
}