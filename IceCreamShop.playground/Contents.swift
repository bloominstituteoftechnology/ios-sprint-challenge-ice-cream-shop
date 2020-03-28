
struct Flavor {
    let name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case med = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}


class IceCreamShop {
    var flavors: [Flavor]
    var sizes : [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(myFlavors: [Flavor], mySizes: [Size], myToppings: [String]) {
        self.flavors = myFlavors
        self.sizes = mySizes
        self.toppings = myToppings
        self.totalSales = 0
    }
    
    func listTopFlavors() {
        for topFlavors in self.flavors {
            if topFlavors.rating >= 4.0 {
                print("Our top flavors are \(topFlavors.name)")
            }
        }
    }
            
    func orderCone(myFlavor: Flavor, myTopping: String?, mySize: Size) -> Cone {
        let newCone = Cone(flavor: myFlavor, topping: myTopping ?? "", size: mySize)
                switch mySize {
                case .large:
                    self.totalSales += Size.large.rawValue
                case .med:
                    self.totalSales += Size.med.rawValue
                case .small:
                    self.totalSales += Size.small.rawValue
                default:
                    ""
                }
        

        if let unwrappedTopping = myTopping {
            print("Your \(newCone.flavor.name) ice cream with \(unwrappedTopping) is \(newCone.size.rawValue)")
        } else {
            print("Your \(newCone.flavor) ice cream is \(newCone.size.rawValue) ")
        }
        return newCone
            }
}



let flavor_chocolateChip = Flavor(name: "Chocolate Chip", rating: 4.5)
let flavor_cookieDough = Flavor(name: "Cookie Dough", rating: 5.0)
let flavor_chocolateMint = Flavor(name: "Chocolate Mint", rating: 4.6)
let flavor_CoffeeVanillaBean = Flavor(name: "CoffeeVanillaBean", rating: 3.2)
let flavor_mocha = Flavor(name: "Mocha", rating: 3.8)

let newFlavors = [flavor_mocha, flavor_cookieDough,flavor_chocolateMint, flavor_chocolateChip, flavor_CoffeeVanillaBean]

let newSizes = [Size.large, Size.med, Size.small]

let topping_Granolla = "Granolla"
let topping_Reeses = "Reeses"
let topping_Snickers = "Snickers"

let newToppings = [topping_Reeses, topping_Granolla, topping_Snickers]

let newIceCreamShop = IceCreamShop(myFlavors: newFlavors, mySizes: newSizes, myToppings: newToppings)


newIceCreamShop.listTopFlavors()


let anotherCone = newIceCreamShop.orderCone(myFlavor: flavor_mocha, myTopping: topping_Snickers, mySize: Size.med)

anotherCone.eat()


print(newIceCreamShop.totalSales)
