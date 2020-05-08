var totalSales: Double = 0.0

struct Flavor {
    let name: String
    let rating: Double
}
let strawberry = Flavor(name: "Strawberry", rating: 10)
let chocolate = Flavor(name: "Chocolate", rating: 7)
let vanilla = Flavor(name: "Vanilla", rating: 6)
let pistachio = Flavor(name: "Pistachio", rating: 3)

print(strawberry.name)

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let size: Size
    let topping: String
    let flavor: Flavor
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}

Cone(size: .large, topping: "Nuts", flavor: chocolate).eat()

class IceCreamShop {
    var iceCreamFlavors: [Flavor]
    

    
    init(iceCreamFlavors: [Flavor]) {
        self.iceCreamFlavors = iceCreamFlavors
    }
    
    
    func listTopFlavors() {
        for topFlavors in iceCreamFlavors {
            if topFlavors.rating >= 4.0 {
            print("Our top flavors are: \(topFlavors.name)")
        }
    }
}


var cone1 = Cone(size: .medium, topping: "Whipped Cream", flavor: strawberry)
var cone2 = Cone(size: .small, topping: "Chocolate Sauce", flavor: vanilla)
var cone3 = Cone(size: .large, topping: "Cherry", flavor: pistachio)
var cone4 = Cone(size: .medium, topping: " ", flavor: chocolate)


