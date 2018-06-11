public class Candidate {
	
    public String Subject;
    public Integer rollnumber;
    public subject s;
    public Department d;
    
    public Candidate(String Subject,Integer rollnumber)
    {
        this.Subject=subject;
        this.rollnumber=rollnumber;
   	}
    
    public void subjectmethod(String fact,Integer stud)
    {
       	s=new subject();
        s.faculty=fact;
       	s.noofstudent=stud;
    }
    public void departmentmethod(String building,String Deptname)
    {
        d=new Department();
        d.building=building;
        d.Deptname=deptname;
    }
    public class subject{
        
        public String faculty;
        public Integer noofstudent;
    }
    
    public class Department{
        
        public String building;
        public String Deptname;
    }

}