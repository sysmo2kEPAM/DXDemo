public with sharing class FoodtrgHandler {
    public static void calcPrice(List<Food__c> lstofzc){
         for(Food__c a : lstofzc) {
         	a.Total_Price__c = a.Quantity__c * a.Price__c;
    	}
    }
    public static void calcPricePizza(List<Food__c> lstofzc){
         for(Food__c a : lstofzc) {
         	a.Total_Price__c = (a.Quantity__c * a.Price__c)*2;
    	}
    }
}