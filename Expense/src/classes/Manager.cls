global class Manager {

    public String name{set;get;}
    public String phno {set;get;}
    public Integer age{set;get;}
    
	public Manager(String name,Integer age,String phno)
    {
        this.name=name;
        this.age=age;
    	this.phno=phno;
    }
    public Manager(String name)
    {
        this.name=name;
    }
}