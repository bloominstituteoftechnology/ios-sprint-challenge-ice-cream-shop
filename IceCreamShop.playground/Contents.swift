var totalSales: Double = 0.0

struct Flavor {
    let name: String
    let rating: Double
}
let strawberry = Flavor(name: "Strawberry", rating: 10)
let chocolate = 
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
        print("Mmm! I love \(flavor.name)")
    }
}

class IceCreamShop {
    var iceCreamFlavors: [Flavor]
    

    
    init(iceCreamFlavors: [Flavor]) {
        self.iceCreamFlavors = iceCreamFlavors
    }
    
    
    func listTopFlavors() {
        for topFlavors in iceCreamFlavors {
            print("Our top flavors are: \(topFlavors.name)")
        }
    }
}




