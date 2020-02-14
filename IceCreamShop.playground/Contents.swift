
struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.75
    case large = 5.50
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)")
    }
}

class IceCreamShop {
    let flavors: [Flavor] = []
    let sizes: [Size]
    let toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size]) {
        self.sizes = []
        self.toppings = []
    }
}

var topFlavors = [IceCreamShop(flavors: [], sizes: [])]

func listTopFlavors() {
    
    for flavor in topFlavors {
        if
    }
    
}
[IceCreamShop(flavors: [], sizes: [], toppings: [], totalSales: )]
