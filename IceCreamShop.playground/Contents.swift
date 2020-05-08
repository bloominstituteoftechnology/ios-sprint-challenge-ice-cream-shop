// Ian Becker

struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small
    case medium
    case large
}

struct Cone {
    let flavor: String
    let topping: String?
    let size: String
    
    func eat() {
        print("My favorite cone is \(self.flavor).")
    }
}

let myFavoriteCone = Cone(flavor: "waffle", topping: "Sprinkles", size: "Small")

myFavoriteCone.eat()

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: String
    var totalSales: Double = 3.99
    
    init(flavors: [Flavor], sizes: [Size], toppings: String, totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    func listTopFlavors() {
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                print("Our most popular flavors are \(flavors).")
            }
        }
    }
}

func orderCone(cone: Cone) -> Cone? {
    let
}
