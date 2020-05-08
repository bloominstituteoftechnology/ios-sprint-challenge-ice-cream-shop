var totalSales: Double = 0.0

struct Flavor {
    let chocolate: String = "Chocolate"
    let vanilla: String = "Vanilla"
    let strawberry: String = "Vanilla"
    let rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavorChoice: [Flavor]
    let topping: String
    let size: [Size]
    
    
    func eat() {
        print("Mmm! I love \(flavorChoice)!")
    }
}

class IceCreamShop {
    let name: String
    let iceCreamFlavors: [Flavor]
    let sizePrice: [Size]
    
    init(name: String, iceCreamFlavors: [Flavor], sizePrice: [Size]) {
        self.name = name
        self.iceCreamFlavors = iceCreamFlavors
        self.sizePrice = sizePrice
    }
}

