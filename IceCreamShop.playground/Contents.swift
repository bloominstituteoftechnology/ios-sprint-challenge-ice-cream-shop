enum Size: Double {
    case small = 3.99
    case medium = 5.99
    case large = 6.99
}

enum Topping: String {
    case chocSprinkles = "chocolate sprinkles"
    case rainbowSprinkles = "rainbow sprinkles"
    case nuts = "nuts"
    case dip = "dipped in chocolate"
    case none = "with no frills"
    
}

struct Flavor {
    let name: String
    var rating: Int
}

struct Cone {
    let size: Size
    let flavor: Flavor
    let topping: String?
    
    init(size: Size, flavor: Flavor, topping: Topping?) {
        self.size = size
        self.flavor = flavor
        
        if let unwrappedTopping = topping {
        self.topping = unwrappedTopping.rawValue
        } else {
            self.topping = nil
        }
    }
    
    func eat() {
        print("Yum! I love the \(flavor) here!")
    }
        
}

class IceCreamShop {
    var flavors: [Flavor] = []
    var totalSales: Int = 0
    var conesSold: [Cone] = []
    
    func listTopFlavors() {
        print("Our customers really seem to enjoy...")
        for flavor in flavors {
            if flavor.rating >= 4 {
                print(flavor.name)
            }
        }
        print("Which can I get for you today?")
    }
    
    func conePrice(cone: Cone) -> Double {
        
    }
    
    func orderCone(size: Size, flavor: Flavor, topping: Topping?) -> Cone? {
        let yourCone = Cone(size: size, flavor: flavor, topping: topping)
        conesSold.append(yourCone)
        return(yourCone)
    }
    
}


