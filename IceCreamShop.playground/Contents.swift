struct Flavor {
    let name: String
    let rating: Int
}

struct Topping {
    let name: String
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: Topping
    let size: Size
    
    func eat(){
        print("Mmm! I love \(flavor)!")
    }
}

class IceCreamShop {
    let sizes: [Size]
    let flavors: [Flavor]
    let toppings: [Topping]
    
    init(sizes: [Size], flavors: [Flavor], toppings: [Topping]) {
        self.sizes = sizes
        self.flavors = flavors
        self.toppings = toppings
    }
}
