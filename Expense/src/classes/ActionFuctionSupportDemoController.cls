public class ActionFuctionSupportDemoController{

    public static String actionFunTest { get; set; }
    public static String dummyString { get; set; }
    
    Integer count = 0;
    
    public void actionFunctionTest(){
      actionFunTest = 'Value from Action Function';
    
    }
    
    public void actionSupportTest(){
      System.debug('#### Action Support Called');
      actionFunTest = 'Value from Action Support '+dummyString;
    }
    
            
    public PageReference incrementCounter() {
        count++;
        return null;
    }
            
    public Integer getCount() {
        return count;
    }
}