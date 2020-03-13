// IceCreamShop - by Harmony Radley



struct Flavor {
    var name: String
    var rating: Double
}



enum Size: Double {
    case small = 2.99
    case medium = 3.99
    case large = 4.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: [Size]
    
    
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}












