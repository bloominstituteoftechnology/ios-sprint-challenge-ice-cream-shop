var totalSales: Double = 0.0

struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let size: Size
    let topping: String
    let flavorChoice: Flavor
    
    func eat() {
        print("Mmm! I love \(flavorChoice)!")
    }
}

class IceCreamShop {
    var iceCreamFlavors: [Cone]
    

    
    init(iceCreamFlavors: [Cone]) {
        self.iceCreamFlavors = iceCreamFlavors
    
    }
    
    
    
    
    func listTopFlavors() {
        for flavors in menu.iceCreamFlavors {
            if rating >= 4.0 {
            print(flavors)
        }
    }
}

let strawberry = Cone(size: .large, topping: "Cherry", flavorChoice:Flavor(name: "Strawberry", rating: 9.5))
let vanilla = Cone(size: .medium, topping: "Whipped Cream", flavorChoice: Flavor(name: "Vanilla", rating: 8.8))
let pistachio = Cone(size: .small, topping: "Chocolate Sauce", flavorChoice: Flavor(name: "Pistachio", rating: 3.9))

var menu = IceCreamShop(iceCreamFlavors: [])
menu.iceCreamFlavors.append(strawberry)
menu.iceCreamFlavors.append(vanilla)
menu.iceCreamFlavors.append(pistachio)



