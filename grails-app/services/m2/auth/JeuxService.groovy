package m2.auth

import grails.gorm.transactions.Transactional

@Transactional
class JeuxService {

    def game(String user1, String user2) {
        def j1 = Users.findById(user1.toLong())
        def j2 = Users.findById(user2.toLong())
        int score1 = Math.abs(new Random().nextInt() % 100 + 1)
        int score2 = Math.abs(new Random().nextInt() % 100 + 1)
        def resultat = new Resultat(joueur1: j1, joueur2: j2, score1: score1, score2: score2).save()
    }
}
