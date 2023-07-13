@RestResource(urlMapping='/ShowAccount/*')
global with sharing class accountcls
{
    @HttpGet
    global static Account doGet()
    {
        RestRequest req=Restcontext.request;
        RestResponse res=Restcontext.response;
        string accountId=req.RequestURI.substring(req.RequestURI.lastindexOf('/')+1);
        Account result=[select id,Name,phone from account where id=:accountId];
        return result;
    }
}