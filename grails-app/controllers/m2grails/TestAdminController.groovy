package m2grails

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class TestAdminController {

    def index() {
        render 'Lol'
    }
}
