@RestResource(urlMapping='/hello/*')
global class PostmanWebService {

    @HTTPPOST
    global static string Tes(string s){
        
        return 'hello apex '+s;
        
    }
}
