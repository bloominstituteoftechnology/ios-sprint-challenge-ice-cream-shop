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
    
    init(size: Size, flavor: Flavor, topping: Topping) {
        self.size = size
        self.flavor = flavor
        self.topping = topping.rawValue
    }
    
    func eat() {
        print("Yum! I love the \(flavor) here!")
    }
}

class IceCreamShop 
