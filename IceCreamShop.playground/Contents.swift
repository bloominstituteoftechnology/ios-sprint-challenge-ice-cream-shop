

struct Flavor{
    var name : String
    var rating: Int
}

enum Size: Double{
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Toppings{
    var topping: String
}

struct Cone{
    var flavor: Flavor
    var topping: Toppings
    var size: Size
}

class IceCreamShop{
    var menuFlavors: [Flavor]
    var menuToppings: [Toppings]
    var totalSales: Double
    
    init(menuFlavors: [Flavor], menuToppings: [Toppings]){
        self.menuFlavors = menuFlavors
        self.menuToppings = menuToppings
        self.totalSales = 0.0
    }
}

// These are the flavors of Ice Cream we have available at our shop!
let chocolate = Flavor(name: "Chocolate", rating: 8)
let vanilla = Flavor(name: "Vanilla", rating: 7)
let cherryChip = Flavor(name: "Cherry Chip", rating: 10)
let rockyRoad = Flavor(name: "Rocky Road", rating: 9)

// These are the toppings we have available at our shop!
let fudge = Toppings(topping: "Fudge")
let peanuts = Toppings(topping: "Peanuts")
let whippedCream = Toppings(topping: "Whipped Cream")
