//Sprint Challenge 1 by Bronson Mullens

struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 1.99
    case medium = 2.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Yum! I love the flavor \(self.flavor.name)")
    }
}

class IceCreamShop {
    var totalSales: Double
    
    var sizes: [Size] = [Size.small, Size.medium, Size.large]
    
    var flavors: [Flavor] = [Flavor(name: "chocolate mud slide", rating: 4.5),
                             Flavor(name: "vanilla cream", rating: 4.0),
                             Flavor(name: "bubble yum", rating: 2.0),
                             Flavor(name: "fruity tooti", rating: 5.0)]
    
    var toppings: [String] = ["sprinkles", "caramel bits", "gummy Worms"]
    
    init(totalSales: Double = 0.0) {
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        print("\nOur top flavors are:")
        for flavor in flavors {
            if flavor.rating > 4.0 {
                print("-\(flavor.name) with a rating of \(flavor.rating)!")
            }
        }
        print("") //New Line
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping ?? "no topping", size: size)
        totalSales += newCone.size.rawValue
        print("Your \(newCone.size) \(newCone.flavor.name) cone with \(newCone.topping) comes out to \(newCone.size.rawValue).")
        return newCone
    }
}

let bronsonsIceCreamShop = IceCreamShop()
bronsonsIceCreamShop.orderCone(flavor: bronsonsIceCreamShop.flavors[0],
                               topping: bronsonsIceCreamShop.toppings[2],
                               size: Size.medium)

let mystery = Flavor(name: "mystery magic", rating: 4.8)
let pineapple = Flavor(name: "swiftly pineapple", rating: 3.5)

enum MoreSizes: Double {
    case mini = 0.99
    case jumbo = 6.99
    case overwhelming = 39.99
}

var moreSizes: [MoreSizes] = [MoreSizes.mini, MoreSizes.jumbo, MoreSizes.overwhelming]
var moreToppings: [String] = ["cookies", "definitely not spaghetti", "chocolate chips"]

let undergroundIceCreamShop = IceCreamShop()
