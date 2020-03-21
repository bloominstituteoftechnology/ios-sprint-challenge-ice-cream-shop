//Sprint Challenge 1 by Bronson Mullens

struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case mini = 0.99
    case small = 1.99
    case medium = 2.99
    case large = 5.99
    case overwhelming = 39.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("\nYum! I love the flavor \(flavor.name)!")
    }
}

//Ice cream shop class with essential flavors, toppings, and sizes
class IceCreamShop {
    var totalSales: Double
    
    var sizes: [Size] = [Size.small, Size.medium, Size.large]
    
    var flavors: [Flavor] = [Flavor(name: "chocolate mud slide", rating: 4.5),
                             Flavor(name: "vanilla cream", rating: 4.0),
                             Flavor(name: "bubble yum", rating: 2.0),
                             Flavor(name: "fruity tooti", rating: 5.0)]
    
    var toppings: [String] = ["sprinkle", "caramel bit", "gummy worm"]
    
    init(totalSales: Double = 0.0) {
        self.totalSales = totalSales
    }
    
    //Lists top rated flavors
    func listTopFlavors() {
        let ratingThreshold: Double = 4.0
        print("\nOur top flavors are:")
        for flavor in flavors {
            if flavor.rating > ratingThreshold {
                print("-\(flavor.name) with a rating of \(flavor.rating)!")
            }
        }
    }
    
    //Logic behind ordering a cone
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping ?? "no topping", size: size)
        totalSales += newCone.size.rawValue
        print("\nYour \(newCone.size) \(newCone.flavor.name) cone with \(newCone.topping) topping comes out to $\(newCone.size.rawValue).")
        return newCone
    }
    
    //These methods allow us to add additional options later on
    func addFlavor(moreFlavors: Flavor) {
        flavors.append(moreFlavors)
    }
    
    func addTopping(moreToppings: String) {
        toppings.append(moreToppings)
    }
    
    func addSize(moreSizes: Size) {
        sizes.append(moreSizes)
    }
}

let bronsonsIceCreamShop = IceCreamShop()

//Bonus flavors to be added
let mystery = Flavor(name: "mystery magic", rating: 4.8)
let pineapple = Flavor(name: "swiftly pineapple", rating: 3.5)

//adding additional flavors
bronsonsIceCreamShop.addFlavor(moreFlavors: mystery)
bronsonsIceCreamShop.addFlavor(moreFlavors: pineapple)

//adding additional sizes
bronsonsIceCreamShop.addSize(moreSizes: Size.mini)
bronsonsIceCreamShop.addSize(moreSizes: Size.overwhelming)

//additional additional toppings
bronsonsIceCreamShop.addTopping(moreToppings: "cookie")
bronsonsIceCreamShop.addTopping(moreToppings: "definitely not spaghetti")
bronsonsIceCreamShop.addTopping(moreToppings: "chocolate chip")

bronsonsIceCreamShop.listTopFlavors()

let newCone = bronsonsIceCreamShop.orderCone(flavor: bronsonsIceCreamShop.flavors[2],
                                             topping: bronsonsIceCreamShop.toppings[1],
                                             size: Size.overwhelming)

newCone?.eat()

print("\nThe shop has made: $\(bronsonsIceCreamShop.totalSales) so far.")
