public class LoginScreen {
    public static string loginmethod(string username, integer password){
       
        string logmsg;
         
        if(username=='muserref123'&& password==1453){
            logmsg='you logged succesfully';
        }
        else if(username=='muserref123'&& password!=1453){
            logmsg='you entered wrong password';
        }
        else if(username!='muserref123'&& password==1453){
            logmsg='you entered wrong username';
        }
        else {logmsg='your both entered wrong';
        }
        return logmsg;
    }

}