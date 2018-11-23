package m2grails

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class TestUserController {

    def index() {
        render 'USer'
    }
}
