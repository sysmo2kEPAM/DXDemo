trigger TrgFood on Food__c (before insert) {
    FoodtrgHandler.calcPrice(Trigger.new);

}