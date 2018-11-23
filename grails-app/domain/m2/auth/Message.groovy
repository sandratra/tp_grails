package m2.auth

class Message {
    String expediteur
    String destinataire
    String messages
    boolean  isRead = true
    Date daty = new Date()

    static constraints = {
        messages nullable: false, blank: false
    }
}
