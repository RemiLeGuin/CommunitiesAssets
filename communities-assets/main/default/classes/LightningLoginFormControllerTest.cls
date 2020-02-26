@IsTest(SeeAllData = true)
public with sharing class LightningLoginFormControllerTest {

    @IsTest
    static void testLoginWithInvalidCredentials() {
        System.assertEquals('Argument 1 cannot be null', LightningLoginFormController.login('testUser', 'fakepwd', null));
    }
    
    @IsTest
    static void LightningLoginFormControllerInstantiation() {
        LightningLoginFormController controller = new LightningLoginFormController();
        System.assertNotEquals(null, controller);
    }

    @IsTest
    static void testIsUsernamePasswordEnabled() {
        LightningLoginFormController.getIsUsernamePasswordEnabled();
    }

    @IsTest
    static void testIsSelfRegistrationEnabled() {
        LightningLoginFormController.getIsSelfRegistrationEnabled();
    }
 
    @IsTest
    static void testGetSelfRegistrationURL() {
        LightningLoginFormController.getSelfRegistrationUrl();
    }

    @IsTest
    static void testAuthConfig() {
        Auth.AuthConfiguration authConfig = LightningLoginFormController.getAuthConfig();
    }

}