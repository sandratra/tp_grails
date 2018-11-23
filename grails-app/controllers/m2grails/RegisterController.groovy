package m2grails

import grails.plugin.springsecurity.annotation.Secured
import m2.auth.RegisterService

@Secured(['permitAll'])
class RegisterController {
    RegisterService registerService

    def index() {
        render view: 'register.gsp'
    }
    def create(){
        if(params.password!=params.confirm_password){
            flash.message = 'Mot de passe incorrect: differents'
            redirect (action: "index")
        }else{
            flash.message = 'Inscription reussie'
            registerService.save(params.pseudo, params.password)
            redirect(controller: "Login", action: "index")
        }

    }
}
