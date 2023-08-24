public class Accnt {
    
    public static boolean acc ( string name, List<Contact> multi){
        Account A =new Account();
        A.name=name;
        insert A;
        
        for(Contact C:multi){
            C.AccountId=A.id;
            if(string.isblank(C.lastname)){
                return false;
            }
        }
        upsert multi;
        return true;
        
    }
 }