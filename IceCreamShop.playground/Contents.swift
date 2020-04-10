
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
    func orderCone(flavor: Flavor, toppings: String?, size: Size) -> Cone? {
        let newCone: Cone? = Cone(flavor: flavor, size: size, topping: toppings)
        totalSales += size.rawValue
        print("Your \(flavor.name) ice cream is \(size.rawValue)!")
        return newCone
    }
    init(flavors: [Flavor], totalSales: Double, toppings: [String?]){
        self.flavors = flavors
        self.totalSales = totalSales
        self.toppings = toppings
    }
}
let lavenderHoney = Flavor(name: "Lavender Honey", rating: 5.0)
let vanilla = Flavor(name: "Vannilla", rating: 4.5)
let chocolate = Flavor(name: "Chocolate", rating: 3.0)
let twist = Flavor(name: "Chocolate Vanilla Twist", rating: 4.0)
let flavorList: [Flavor] = [lavenderHoney, vanilla, chocolate, twist]
let sizeList: [Size] = [Size.small, Size.medium, Size.large]
let toppingsList: [String] = ["Sprinkles", "Hot Fudge"]
let visBrainFreeze = IceCreamShop(flavors: flavorList, totalSales: 0.0, toppings: toppingsList)

