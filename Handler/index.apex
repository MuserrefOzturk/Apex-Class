public with sharing class Handler {

    public static boolean Acc (string name,List<contact> multi){
        Account yeni =new Account();
        yeni.Name=name;
        
        if(schema.SObjectType.Account.fields.name.isCreateable()){
            insert yeni;
            }
         else{
            return false;
        }
        for(contact c:multi){
            c.AccountId=yeni.id;
        }
        if(schema.SObjectType.Contact.fields.name.isCreateable() && 
           schema.SObjectType.Contact.fields.lastname.isCreateable()&&
           schema.SObjectType.Contact.fields.name.isUpdateable()){
               upsert multi;
           }
        return true;
    }
}