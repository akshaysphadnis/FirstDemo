global class Listset {
	
    public list<String> num{set;get;}
    public set<String> names{set;get;}
    public boolean test{set;get;}
    public boolean s{set;get;}
    public Listset()
    {
        num=new list<String>();
    	num.add('one');
        num.add('two');
        num.add('one');
        names=new set<String>();
      	names.add('alex');
        names.add('ben');
        names.add('chao');
        names.add('alexis');
        names.remove('chao');
        
        test=names.retainAll(names);
        s=names.isEmpty();
        
    }
    
}