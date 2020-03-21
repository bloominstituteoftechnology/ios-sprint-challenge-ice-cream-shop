struct Flavor {
    var name: String
    var rating: Int
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Topping {
    var name: String
}

struct Cone {
    var flavor: Flavor
    var topping: Topping
    var size: Size
    
    func eat() {
        print("Mmm! I love \(flavor.name)")
    }
}

class IceCreamShop {
    var totalSales: Double
    
    var flavor: [Flavor]
    var size: [Size]
    var topping: [Topping]
    
    init(totalSales: Double) {
        self.totalSales = totalSales
        self.flavor = []
        self.size = []
        self.topping = []
    }
    
    func listTopFlavors() {
        for flavor in flavor {
            if flavor.rating > 3 {
                print("We have \(flavor.name) which is rated \(flavor.rating) out of 5!")
            }
        }
    }
    
    func orderCone(flavor: Flavor, topping: Topping?, size: Size) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping!, size: size)

        totalSales += size.rawValue
        
        if let unwrappedTopping = topping {
            print("You are ordering a \(size) \(flavor.name) cone with \(unwrappedTopping.name). That will be \(size.rawValue).")
        } else {
            print("You are ordering a \(size) \(flavor.name) cone with no toppings. That will be \(size.rawValue).")
        }
        return newCone
    }
}

let chocolate = Flavor(name: "Chocolate", rating: 4)
let strawberry = Flavor(name: "Strawberry", rating: 3)
let vanilla = Flavor(name: "Vanilla", rating: 5)

let sprinkles = Topping(name: "Sprinkles")
let chocolateDip = Topping(name: "Chocolate Dip")
let caramelDrizzle = Topping(name: "Caramel Drizzle")

let sizeSmall = Size.small
let sizeMedium = Size.medium
let sizeLarge = Size.large

let lambdaIceCreamShop = IceCreamShop(totalSales: 0)

lambdaIceCreamShop.flavor.append(chocolate)
lambdaIceCreamShop.flavor.append(strawberry)
lambdaIceCreamShop.flavor.append(vanilla)

lambdaIceCreamShop.topping.append(sprinkles)
lambdaIceCreamShop.topping.append(chocolateDip)
lambdaIceCreamShop.topping.append(caramelDrizzle)

lambdaIceCreamShop.size.append(sizeSmall)
lambdaIceCreamShop.size.append(sizeMedium)
lambdaIceCreamShop.size.append(sizeLarge)

lambdaIceCreamShop.listTopFlavors()

lambdaIceCreamShop.orderCone(flavor: chocolate, topping: caramelDrizzle, size: sizeSmall)
lambdaIceCreamShop.orderCone(flavor: vanilla, topping: chocolateDip, size: sizeLarge)
lambdaIceCreamShop.orderCone(flavor: strawberry, topping: sprinkles, size: sizeMedium)

let myOrder = lambdaIceCreamShop.orderCone(flavor: chocolate, topping: sprinkles, size: sizeLarge)
myOrder?.eat()

let dailyProfit = lambdaIceCreamShop.totalSales
print("Our daily profit is: \(dailyProfit)")










