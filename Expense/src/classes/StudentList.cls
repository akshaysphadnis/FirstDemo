public class StudentList {
    Public List<Student> result{set;get;}
    Public String myval{set;get;}
    Public List<SelectOption> myoption{set;get;}
    
    public StudentList()
    {
        Student a1=new Student('akshay',24);
        Student a2=new Student('Deven',24);
        result=new List<Student>();
        result.add(a1);
        result.add(a2);
        
        SelectOption s1=new SelectOption('null','none');
        Selectoption s2=new SelectOption('one','jan');
        myoption=new List<Selectoption>();
        myoption.add(s1);
        myoption.add(s2);
        
        
    }

}