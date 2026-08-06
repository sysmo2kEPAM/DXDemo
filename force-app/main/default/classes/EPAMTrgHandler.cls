public class EPAMTrgHandler {
    public static void calcPrice(List<EPAM__c> lstofzc){
         for(EPAM__c a : lstofzc) {
         	a.price__c = a.qty__c * a.rate__c;
    	}
    }
}