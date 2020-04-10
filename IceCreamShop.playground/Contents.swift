
struct Flavor {
    let name: String
    let rating: Double
}
enum Size: Double {
    case small = 0.79
    case medium = 1.32
    case large = 1.79
}
struct Cone {
    let flavor: Flavor
    let size: Size
    let topping: String?
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
}
class IceCreamShop {
    var cone: Cone
    var flavors: [Flavor]
    var toppings: [String?]
    var totalSales: Double
    func listTopFlavors () {
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                print("\(flavor.name) is one of our top flavors!")
            }
        }
    }
    func orderCone(flavor: [Flavor], toppings: [String?], size: Size) -> Cone {
        
        return cone
    }
    init(cone: Cone, flavors: [Flavor], totalSales: Double, toppings: [String?]){
        self.cone = cone
        self.flavors = flavors
        self.totalSales = totalSales
        self.toppings = toppings
        
    }
}
