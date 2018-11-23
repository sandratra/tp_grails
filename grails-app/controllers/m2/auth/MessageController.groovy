package m2.auth

import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class MessageController {

    MessageService messageService

    def index() {
    }
    def join(String nickname) {
        println("nn :: " + nickname)
        session.nickname = nickname
        redirect(action:'index')
    }

    //get 10 latest messages
    def retrieveLatestMessages() {
        def user = messageService.currentUser
        //def messages = Message.listOrderByDaty(order: 'desc', max:10)
        def m = Message.where {
            (destinataire == session.nickname && expediteur == user.username) || (destinataire == user.username && expediteur == session.nickname)
        }
        def messages = m.list()
        [messages:messages]
    }
    def submitMessage(String message) {
        def user = messageService.currentUser
        def m = messageService.save(user.username, session.nickname, message)
        println("m: " + m.expediteur + ", " + m.destinataire + ", " + m.messages)
        render "<script>retrieveLatestMessages()</script>"
    }
}