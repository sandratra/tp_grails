package m2.auth

class Message {
    Users expediteur
    Users destinataire
    String messages
    boolean  isRead
    Date daty

    static constraints = {
        message nullable: false, blank: false
    }
}
