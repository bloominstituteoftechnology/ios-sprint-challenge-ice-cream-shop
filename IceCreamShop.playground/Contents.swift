
struct Flavor {
    var name: String
    var rating: Double?
}

enum Size: Double {
    case small
    case medium
    case large
}

struct Cone {
    let flavor: String
    let topping: String
    let size = Size.RawValue()
    
    func eat() {
        print("Yum, I love \(flavor)")
    }
}

class IceCreamShop {
    var totalSales: Double
    var flavors: [Cone]
    
    init(totalSales: Double, flavors: String) {
        self.totalSales = totalSales
        self.flavors = []
    }
}



