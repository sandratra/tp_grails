package m2.auth

import grails.gorm.services.Service

@Service(Users)
interface UsersService {

    Users get(Serializable id)

    List<Users> list(Map args)

    Long count()

    void delete(Serializable id)

    Users save(Users users)

}