package m2grails

import m2.auth.Users
import m2.auth.Role
import m2.auth.UsersRole
class BootStrap {

    def init = { servletContext ->
        if(Role.count == 0) {
            def roleAdmin = new Role(authority: 'ROLE_ADMIN').save(flush: true, failOnError: true)
            def roleUser = new Role(authority: 'ROLE_USER').save(flush: true, failOnError: true)

            def userInstance = new Users(username: 'user', password: 'user').save(flush: true, failOnError: true)
            def adminInstance = new Users(username: 'admin', password: 'admin').save(flush: true, failOnError: true)

            UsersRole.create userInstance, roleUser, true
            UsersRole.create adminInstance, roleAdmin, true
        }
    }
    def destroy = {
    }
}
