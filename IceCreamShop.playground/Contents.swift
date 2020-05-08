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
    let flavorChoice: [Flavor]
    let topping: String
    let size: [Size]
    
    
    func eat() {
        print("Mmm! I love \(flavorChoice)!")
    }
}
