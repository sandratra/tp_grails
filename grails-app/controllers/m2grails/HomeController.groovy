package m2grails

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class HomeController {

    def index() {
        render(view: 'home.gsp')
    }

    def log() {
        render(view: 'auth.gsp')
    }
}
