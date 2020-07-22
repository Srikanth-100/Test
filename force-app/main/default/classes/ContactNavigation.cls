public class ContactNavigation {
    
    public contact myNewContact{set;get;}
    Account acc;
    public ContactNavigation(ApexPages.StandardController st){
        this.acc = (Account)st.getRecord();
        myNewContact = new contact();
    }
    public pageReference SaveRecord(){
        myNewContact.AccountId = acc.Id;
        Insert myNewContact;
        PageReference pageRef = new PageReference('/'+myNewContact.id);
        pageRef.setredirect(true);
        return pageRef;
    }
}