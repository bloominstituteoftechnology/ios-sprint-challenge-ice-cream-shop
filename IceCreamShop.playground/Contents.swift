enum Size: Double {
    case small = 3.99
    case medium = 5.99
    case large = 7.99
}


struct Flavor {
    var name: String
    var rating: Double
}

struct Cone {
    var flavor: Flavor
    var topping: String
    var size: Size
    
    func eat() {
        print("MMM! I love \(self.flavor).")
    }
}

