package m2grails

import grails.plugin.springsecurity.annotation.Secured
import m2.auth.JeuxService

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class JeuxController {
    JeuxService jeuxService
    def index() {
        jeuxService.game(params.user1, params.user2)
        redirect(controller: "resultat", action: "index")
    }
}
