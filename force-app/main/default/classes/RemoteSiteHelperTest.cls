@IsTest
private class RemoteSiteHelperTest 
{
    @IsTest
    private static void testCheckMetadataAPIConnection()
    {   
		remotesite__c myrs = new     remotesite__c();
        myrs.siteurl__c='www.test1.com';
        myrs.sitename__c='test1';
        myrs.description__c='test1';
        insert myrs;
        
        // Metadata API web Service mock implementation for tests
        Test.setMock(WebServiceMock.class, new WebServiceMockImpl());
        
        RemoteSiteHelperController controller = new RemoteSiteHelperController();
        System.assertEquals(true, controller.MetadataConnectionWarning);        
        controller.MetadataResponse = '';
        controller.displayMetadataResponse();
        System.assertEquals(false, controller.MetadataConnectionWarning);
        controller.MetadataResponse = 'Some Error Creating Remote Site Setting';
        controller.displayMetadataResponse();
        System.assertEquals(true, controller.MetadataConnectionWarning);
        
        myrs.siteurl__c='www.test2.com';
        myrs.sitename__c='test2';
        myrs.description__c='test2';  
        
        controller.save();
    }
    
    /**
     * Metadata API web service mock class for tests above
     **/
    private class WebServiceMockImpl implements WebServiceMock 
    {
        public void doInvoke(
            Object stub, Object request, Map<String, Object> response,
            String endpoint, String soapAction, String requestName,
            String responseNS, String responseName, String responseType) 
        {
            throw new TestException();
        }
    }
    
    public class TestException extends Exception { }
}