
enum Ratings: Double {
    case oneStar = 1
    case twoStar = 2
    case threeStar = 3
    case fourStar = 4
    case fiveStar = 5
}

struct Flavor {
    let name: String
    let rating: Ratings
}

enum Size: Double {
    case small = 3.00
    case medium = 4.00
    case large = 5.00
}

struct Cone {
    let flavor: String
    let topping: String
    let size: Size
}

let myCone = Cone(flavor: "Cookies and Cream", topping: "Oreos", size: .large)

func eat() {
    print("You have ordered the \(myCone.flavor) flavor. Yummm!")
}

eat()

class IceCreamShop {
    var flavors: [Flavor] = []
    var toppings: [String] = ["Oreos", "Caramel", "Whipped Cream"]
    var sizes: Size
    
    init(toppings: [String], sizes: Size) {
        self.flavors = []
        self.toppings = toppings
        self.sizes = sizes
    }
}

let chocolateParadise = Flavor(name: "Chocolate Paradise", rating: .threeStar)
let cookiesAndCream = Flavor(name: "Cookies and Cream", rating: .fiveStar)
let caramelJoy = Flavor(name: "Caramel Joy", rating: .fiveStar)


