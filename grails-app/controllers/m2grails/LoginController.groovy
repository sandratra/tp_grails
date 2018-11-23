package m2grails

import grails.config.Config
import grails.core.support.GrailsConfigurationAware

class LoginController extends grails.plugin.springsecurity.LoginController implements GrailsConfigurationAware {

    def auth() {

        def conf = getConf()

        if (springSecurityService.isLoggedIn()) {
            redirect uri: conf.successHandler.defaultTargetUrl
            return
        }
    }

    @Override
    void setConfiguration(Config co) {

    }
}
