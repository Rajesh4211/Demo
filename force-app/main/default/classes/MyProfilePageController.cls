/**
 *@description MyProfilePageController class  
 */
public with sharing class MyProfilePageController {

    private User user;
    private boolean isEdit = false;

/**
*@description getUser method
*/
    public User getUser() {
        return user;
    }
/**
*@description MyProfilePageController method
*/
    public MyProfilePageController() {
        user = [SELECT id, email, username, usertype, communitynickname, timezonesidkey, languagelocalekey, firstname, lastname, phone, title,
                street, city, country, postalcode, state, localesidkey, mobilephone, extension, fax, contact.email
                FROM User
                WHERE id = :UserInfo.getUserId() WITH SECURITY_ENFORCED];
        // guest users should never be able to access this page
        if (user.usertype == 'GUEST') {
            throw new NoAccessException();
        }
    }
/**
*@description getIsEdit method
*/
    public Boolean getIsEdit() {
        return isEdit;
    }
/**
*@description edit method
*/
    public void edit() {
        isEdit=true;
    }
/**
*@description save method
*/
    public void save() {
        try {
            update user;
            isEdit=false;
        } catch(DmlException e) {
            ApexPages.addMessages(e);
        }
    }
/**
*@description changePassword method
*@return Page
*/
    public PageReference changePassword() {
        return Page.ChangePassword;
    }
/**
*@description cancel method
*/
    public void cancel() {
        isEdit=false;
        user = [SELECT id, email, username, communitynickname, timezonesidkey, languagelocalekey, firstname, lastname, phone, title,
                street, city, country, postalcode, state, localesidkey, mobilephone, extension, fax, contact.email
                FROM User
                WHERE id = :UserInfo.getUserId() WITH SECURITY_ENFORCED];
    }    
}