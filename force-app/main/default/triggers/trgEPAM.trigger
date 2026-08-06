trigger trgEPAM on Epam__c (before insert,before update) {
    EPAMTrgHandler.calcPrice(Trigger.new);

}