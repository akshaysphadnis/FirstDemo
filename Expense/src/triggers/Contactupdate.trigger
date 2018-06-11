trigger Contactupdate on Contact (after insert) {
    
    {
        if(trigger.isafter)
        {
            if(trigger.isinsert)
            {
                Contactupdateapex con=new Contactupdateapex();
               
            }
        }
    }

}