
@isTest
private class FoodTest {

    @isTest
    static void burgerTest() {
        Food__c food = new Food__c(Quantity__c=2, Price__c=5,Lunch__c='Burger');
        insert food;
        food = [SELECT Total_Price__c FROM Food__c WHERE Id = :food.Id];
        System.assertEquals(10, food.Total_Price__c);
        
    }
    @isTest
    static void pizzaTest() {
        Food__c food = new Food__c(Quantity__c=2, Price__c=5,Lunch__c='Pizza');
        insert food;
        food = [SELECT Total_Price__c FROM Food__c WHERE Id = :food.Id];
        System.assertEquals(20, food.Total_Price__c);
        
    }
}