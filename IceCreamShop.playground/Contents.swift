struct Flavor {
    var name: String
    var rating: Double
}
// Ratings will be 1-5 star

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}


struct Cone {
    var flavor: Flavor
    var topping: String?
    var size: Size
    
    func eat() {
        print("Delicious! \(flavor.name) is my favorite!")
    }
}


class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String?]
    var totalSales: Double = 0.00
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    func listTopFlavors() {
        for flavor in flavors {
            if flavor.rating > 4 {
                print("One of our top flavors is \(flavor.name), rated \(flavor.rating) stars!")
            }
        }
    }
    func orderCone(order: Cone) -> Cone?  {
        totalSales = 0.00 + order.size.rawValue
        if let unwrappedTopping = order.topping {
            print("Your Order: A \(order.size) \(order.flavor.name) with \(unwrappedTopping) costs \(order.size.rawValue)")
            return order
        } else {
            print("Your Order: A \(order.size) \(order.flavor.name) costs \(order.size.rawValue)")
            return order
    }
}
}
    
    


var chocolate: Flavor = Flavor(name: "Chocolate", rating: 5.0)
var vanilla: Flavor = Flavor(name: "Vanilla", rating: 5.0)
var strawberry: Flavor = Flavor(name: "Strawberry", rating: 3.5)
var mintChocolateChip: Flavor = Flavor(name: "Mint Chocolate Chip", rating: 4.3)
var sizeArray: [Size] = [.small, .medium, .large]
var toppingArray: [String] = ["Sprinkles", "Melted Fudge", "Melted Caramel"]

let benitosIceCream = IceCreamShop(flavors: [chocolate, vanilla, strawberry, mintChocolateChip], sizes: sizeArray, toppings: toppingArray, totalSales: 0.00)

benitosIceCream.listTopFlavors()

let customerCone = Cone(flavor: chocolate, topping: "Sprinkles", size: .medium)

benitosIceCream.orderCone(order: customerCone)

customerCone.eat()

print(benitosIceCream.totalSales)
