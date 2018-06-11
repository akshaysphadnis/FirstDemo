public class TaskUtil {
    
    public static String getTaskPriority(String leadState)
    {
        if(String.isBlank(leadState)||leadState.length()>2)
        {
            return null;
        }
        
        String taskpriority;
        if(leadState=='CA')
        {
            taskpriority='High';
        }
        else
        {
            taskpriority='normal';
        }
        
        return taskpriority;
    }

}