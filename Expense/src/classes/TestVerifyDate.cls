@isTest
public class TestVerifyDate{
    @isTest static void testdate2within()
    {
        Date dt=VerifyDate.CheckDates(date.today(),date.today()+4);
        system.assertEquals(date.today()+4,dt);
        
    }

    @isTest static void testdate2notwithin30days()
    {
		Date d1=date.today();
        Date d2=d1.addDays(31);
        Date dt=VerifyDate.CheckDates(d1,d2);
        System.assertNotEquals(dt,d2);
        
    }
  
@isTest static void DateInvalid()
    {
        Date date1 = date.today();
        Date date2 = date1.addDays(-5);
        Date t = VerifyDate.CheckDates(date1, date2);
        System.assertNotEquals(t, date2);
    }
}