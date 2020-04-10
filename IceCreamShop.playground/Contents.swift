
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
        print("Mmm! I love \(flavor.name)!")
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
    func orderCone(flavor: Flavor, toppings: String?, size: Size) -> Cone {
        let newCone: Cone = Cone(flavor: flavor, size: size, topping: toppings)
        totalSales += size.rawValue
        guard let unwrappedToppings = toppings else {
        print("Your \(flavor.name) ice cream is \(size.rawValue)!")
        return newCone
        };print("Your \(flavor.name) ice cream with \(unwrappedToppings) is \(size.rawValue)!")
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
let sprinkles = "sprinkles"
let hotFudge = "hot fudge"
let toppingsList: [String] = [sprinkles, hotFudge]
let visBrainFreeze = IceCreamShop(flavors: flavorList, totalSales: 0.0, toppings: toppingsList)
visBrainFreeze.listTopFlavors()
let visCone = visBrainFreeze.orderCone(flavor: lavenderHoney, toppings: nil, size: Size.large)
let visConeWithSprinkles = visBrainFreeze.orderCone(flavor: lavenderHoney, toppings: "sprinkles", size: Size.large)
print(visBrainFreeze.totalSales)
visCone.eat()
visConeWithSprinkles.eat()
