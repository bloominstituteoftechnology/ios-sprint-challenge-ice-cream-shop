//Stephanie Ballard

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}


struct Flavor {
    let name: String
    let rating: String
}

struct Cone {
    let flavor: String
    let topping: String
    let size: Size
}

func eat() {
    print("Mmm! I love \(Flavor.self)")
}

class IceCreamShop {
    var flavor: String
    var size: String
    var topping: String
    var totalSales: Double
}
