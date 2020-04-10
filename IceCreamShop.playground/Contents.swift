

struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let size: Size
    let topping: String
    
    func eat() {
        print("Mmm! I love \(flavor.name)")
    }
}
