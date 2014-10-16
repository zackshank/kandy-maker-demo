package demo.complete

class Candy {

    String name

    static hasMany = [ingredients: String]

    static constraints = {
        name nullable: false
    }
}