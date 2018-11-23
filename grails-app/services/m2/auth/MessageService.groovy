package m2.auth

import grails.gorm.transactions.Transactional
import grails.plugin.springsecurity.SpringSecurityService
import grails.validation.ValidationException

@Transactional
class MessageService extends SpringSecurityService {
    def save(String exp, String dest, String mess) {
        def m = new Message(expediteur: exp,destinataire: dest, messages:mess).save()
    }
}