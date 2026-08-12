public with sharing class FoodtrgHandler {
     //
    public static void calcPriceBurger(List<Food__c> lstofzc){
         for(Food__c a : lstofzc) {
         	a.Total_Price__c = a.Quantity__c * a.Price__c;
    	}
    }
    public static void calcPricePizza(List<Food__c> lstofzc){
         for(Food__c a : lstofzc) {
         	a.Total_Price__c = (a.Quantity__c * a.Price__c)*2;
    	}
    }
    public static void calcPriceChips(List<Food__c> lstofzc){
         for(Food__c a : lstofzc) {
         	a.Total_Price__c = (a.Quantity__c * a.Price__c)*4;
    	} 
    }
}