package m2.auth

import grails.gorm.transactions.Transactional

@Transactional
class RegisterService {

    def save(String pseudo,String mp) {
        def user = new Users(username: pseudo,password: mp).save()
        new UsersRole(users: user, role: Role.findByAuthority('ROLE_USER')).save()
    }
}
