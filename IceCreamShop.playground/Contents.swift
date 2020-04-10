
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
    var flavor: Flavor
    var toppings: String?
    var totalSales: Double
    init(cone: Cone, flavor: Flavor, totalSales: Double){
        self.cone = cone
        self.flavor = flavor
        self.totalSales = totalSales
    }
}
