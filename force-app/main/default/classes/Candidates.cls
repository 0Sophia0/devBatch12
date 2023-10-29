public class Candidates {
    public String name ;
    public String gender ;
    public static string companyName ;
    public static integer countCandidates = 0;

    public void printCandidateInfo() {
        system.debug('Candidate name is : '+name);
        system.debug('Candidate gender is : '+gender);
        system.debug('Candidate companyName is : '+companyName);
    }

    public static void printCandidateInfoSt() {
        system.debug('Candidate companyName is : '+companyName);
        /*
        system.debug('Candidate name is : '+name);
        
        Bunu yapamazsin non static variable a static method ulasamaz*/
    }
}