package demo.complete

import grails.transaction.Transactional

@Transactional
class DatabaseService {

    def deleteCandy(def id) {
        Candy.deleteAll(Candy.findById(id))
    }
}
