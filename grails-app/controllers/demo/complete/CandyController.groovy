package demo.complete

class CandyController {

    def databaseService

    def list() {

        [
                candies: Candy.findAll().sort{it.name}
        ]
    }

    def newCandy() {

    }

    def createCandy() {

        Candy newCandy = new Candy(
                name: params.name,
                ingredients: []
        )
        newCandy.ingredients.addAll(params.list('ingredients'))

        newCandy.insert()

        redirect controller: 'candy', action: 'list'

    }

     def deleteCandy() {
        if (params.id) {
            databaseService.deleteCandy(params.id)
        }
        redirect controller: 'candy', action: 'list'
     }


}
