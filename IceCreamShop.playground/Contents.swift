struct Flavor {
    var name: String
    var rating: Int
}

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
        print("Mmm! I love \(flavor)")
    }
}

//test array

let toppingsArray = ["Sprinkles", "Fudge", "Caramel"]

class IceCreamShop {
    var totalSales: Double
    
    var flavor: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    
    init(totalSales: Double) {
        self.totalSales = totalSales
        self.flavor = []
        self.sizes = []
        self.toppings = []
    }
    
    func listTopFlavors() {
        for flavor in flavor {
            if flavor.rating > 3 {
                print("We have \(flavor.name) which is rated \(flavor.rating) out of 5!")
            }
        }
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping, size: size)

        totalSales += size.rawValue
        
        if let unwrappedToppings = topping {
            print("You are ordering a \(flavor.name) cone with \(unwrappedToppings). That will be \(size.rawValue).")
        } else {
            print("You are ordering a \(flavor.name) cone with no toppings. That will be \(size.rawValue).")
        }
        return newCone
    }
}

let chocolate = Flavor(name: "Chocolate", rating: 4)
let strawberry = Flavor(name: "Strawberry", rating: 3)
let vanilla = Flavor(name: "Vanilla", rating: 5)

let lambdaIceCreamShop = IceCreamShop(totalSales: 0)

lambdaIceCreamShop.flavor.append(chocolate)
lambdaIceCreamShop.flavor.append(strawberry)
lambdaIceCreamShop.flavor.append(vanilla)

//test top flavors
lambdaIceCreamShop.listTopFlavors()

//test orders, need to string an array of toppings
lambdaIceCreamShop.orderCone(flavor: chocolate, topping: "Sprinkles", size: .medium)
lambdaIceCreamShop.orderCone(flavor: strawberry, topping: nil, size: .small)
lambdaIceCreamShop.orderCone(flavor: vanilla, topping: "Fudge", size: .large)

//test sales count
lambdaIceCreamShop.totalSales






