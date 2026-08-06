@isTest
public class trgEPAM_Test {
         @isTest static void Test1Test()
    {
        EPAM__c t3 = new EPAM__c();
        t3.Product__c = 'Burger';
        t3.Rate__c = 2.99;
        t3.Qty__c = 3;
        
        Insert t3;
        
        List<EPAM__c> b = New List<EPAM__c>([select id,price__c from EPAM__c where id =: t3.id]);
    	
        // Now Calculate Price and assert expected Value
        System.assertEquals(8.97, b[0].price__c,'Price not Calculated Correctly');
        
    }

}