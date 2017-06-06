public with sharing class TestClass2 {
    public static void Test()
    {
    	List <Account> AccCon = [Select Name, (Select Name from Contacts) from Account where Id='0012800000qgVt4'];
    	for(Account thisAccCon:  AccCon)
    	{
    		System.debug(thisAccCon.Name);
            	for(Contact c: thisAccCon.Contacts)
                {
                    System.debug(c.Name);
                }
    	
    	}
    	//Database.insert
	//	HttpRequest newRestReq = new HttpRequest();
      //  newRestReq.
    }
    
}