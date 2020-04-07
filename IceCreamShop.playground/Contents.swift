
// #1
struct Flavor {
    var name: String
    var rating: Int
}

// #2
enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

// #3
struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print ("mmm! I love \(flavor.name)!")
    }
}



// #4
class IceCreamShop {
    var flavor: [Flavor]
    var size: [Size]
    var toppings: [String]
    var totalSales: Double
    
        
    init(shopFlavors: [Flavor], shopSizes: [Size], shopToppings:[String]){
        self.flavor = shopFlavors
        self.size = shopSizes
        self.toppings = shopToppings
        self.totalSales = 0
        
    }
    // #5
    func listTopFlavors() {
    
        for flavor in self.flavor {
            if flavor.rating >= 4 {
                print("\(flavor.name) is a top flavor")
            }
    }
    
}
    // #6
    func orderCone(orderFlavor: Flavor, orderTopping: String?, orderSize: Size) -> Cone {
        let order = Cone(flavor: orderFlavor, topping: orderTopping ?? "", size: orderSize)
        switch orderSize {
        case .large:
            self.totalSales += Size.large.rawValue
        case .medium:
            self.totalSales += Size.medium.rawValue
        case .small:
            self.totalSales += Size.small.rawValue
        default:
            ""
        }
        if let unwrappedTopping = orderTopping {
            print("You ordered a \(order.size) \(order.flavor.name) with \(unwrappedTopping)")
        }
        else {
            print("You ordered a \(order.size) \(order.flavor.name)")
        }
        return order
    }
}
    
// #7
let flavor1 = Flavor(name: "Chocolate", rating: 1)
let flavor2 = Flavor(name: "Strawberry", rating: 2)
let flavor3 = Flavor(name: "Mint Chip", rating: 3)
let flavor4 = Flavor(name: "Phish Food", rating: 4)
let flavor5 = Flavor(name: "Vanilla", rating: 5)

let topping1 = "nuts"
let topping2 = "sprinkles"
let topping3 = "pineapple"

let zachsFlavors = [flavor1, flavor2, flavor3, flavor4, flavor5]
let zachsToppings = [topping1, topping2, topping3]
let zachsSizes = [Size.medium, Size.small, Size.large]

// #8
let zachsIcecream = IceCreamShop(shopFlavors: zachsFlavors, shopSizes: zachsSizes , shopToppings: zachsToppings)

// #9
zachsIcecream.listTopFlavors()

// #10
let newCone = zachsIcecream.orderCone(orderFlavor: flavor4, orderTopping: topping3, orderSize: Size.large)

// #11
newCone.eat()

// #11
print(zachsIcecream.totalSales)
