trigger TrgFood on Food__c (before insert,before update) {
    
    List<Food__c> burgers = new List<Food__c>();
    List<Food__c> pizzas = new List<Food__c>();
    List<Food__c> chips = new List<Food__c>();
    
    For (Food__c myfood : Trigger.new)
    {
        if (myfood.Lunch__c =='Burger')
        {
           burgers.add(myfood) ;
        }
        if (myfood.Lunch__c =='Pizza')
        {
           pizzas.add(myfood) ;
        }
        if (myfood.Lunch__c =='Chips')
        {
           chips.add(myfood) ;
        }
    }
    
    FoodtrgHandler.calcPriceBurger(burgers);
    FoodtrgHandler.calcPricePizza(pizzas);
    //FoodtrgHandler.calcPriceChips(chips);

}