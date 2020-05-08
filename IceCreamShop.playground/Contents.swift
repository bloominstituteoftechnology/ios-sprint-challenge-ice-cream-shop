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
    let strawberry: Flavor = Flavor(name: "Strawberry", rating: 8.9)
    let chocolate: Flavor = Flavor(name: "Chocolate", rating: 10)
    let vanilla: Flavor = Flavor(name: "Vanilla", rating: 7.7)
    let pistachio: Flavor = Flavor(name: "Pistachio", rating: 3.2)
    
    func eat() {
        print("Mmm! I love \(vanilla)!")
    }
}

class IceCreamShop {
    var iceCreamFlavors: [Cone]
    let strawberry: Flavor
    let chocolate: Flavor
    let vanilla: Flavor
    

    
    init(iceCreamFlavors: [Cone], strawberry: Flavor, chocolate: Flavor, vanilla: Flavor) {
        self.iceCreamFlavors = iceCreamFlavors
        self.strawberry = strawberry
        self.chocolate = chocolate
        self.vanilla = vanilla
    }
}
    




