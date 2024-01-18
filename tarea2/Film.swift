import Foundation

struct Film: Identifiable{
    let id = UUID()
    var name: String
    var image: String
    var score: Decimal
    var date: String
    var categories: [String]
    var sinopsis: String
}

extension Film{
    static var sampleData = [
        Film(name: "Joker", image: "joker", score: 8.4, date: "2019", categories: ["Suspense", "Drama"], sinopsis: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
        Film(name: "El señor de los anillos", image: "elretornodelrey", score: 9.0, date: "2003", categories: ["Acción", "Aventuras"], sinopsis: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
        Film(name: "Pulp Fiction", image: "pulpfiction", score: 8.9, date: "1994", categories: ["Drama", "Comedia"], sinopsis: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
        Film(name: "El caballero oscuro", image: "batman", score: 9.0, date: "2008", categories: ["Acción", "Suspense"], sinopsis: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
    ]
}
