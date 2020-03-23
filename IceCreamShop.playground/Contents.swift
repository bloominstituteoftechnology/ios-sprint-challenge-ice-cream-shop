//Sprint challenge 1 by Bronson Mullens

struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double {
    case small = 2.99
    case medium = 3.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("\nYum! I love \(flavor.name)!")
    }
}

class IceCreamShop {
    var totalSales: Double
    
    var menuFlavors: [Flavor] = []
    var menuSizes: [Size] = []
    var menuToppings: [String] = []
    
    init(totalSales: Double = 0) {
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        print("\nOur top flavors are:")
        for flavor in menuFlavors {
            if flavor.rating > 4.0 {
                print("- \(flavor.name) with a rating of \(flavor.rating)")
            }
        }
    }
    
    //Constructs a new ice cream cone
    func orderCone(chosenFlavor: Flavor, chosenTopping: String?, chosenSize: Size) -> Cone? {
        let newCone = Cone(flavor: chosenFlavor,
                           topping: chosenTopping ?? "no",
                           size: chosenSize)
        totalSales += newCone.size.rawValue
        if let unwrappedTopping = chosenTopping {
            print("\nYour \(chosenSize) \(chosenFlavor.name) cone with \(unwrappedTopping) is $\(chosenSize.rawValue).")
        } else {
            print("\nYour \(chosenFlavor.name) cone is $\(chosenSize.rawValue).")
        }
        return newCone
    }
    
    func checkRegister() {
        print("\nYou check today's earnings...")
        print("...$\(totalSales) so far!")
    }
    
    func addFlavors(newFlavors: [Flavor]) {
        for flavor in newFlavors {
            menuFlavors.append(flavor)
        }
    }
    
    func addSizes(newSizes: [Size]) {
        for size in newSizes {
            menuSizes.append(size)
        }
    }
    
    func addToppings(newToppings: [String]) {
        for topping in newToppings {
            menuToppings.append(topping)
        }
    }
}

//Ice Cream Flavors
let chocolate: Flavor = Flavor(name: "chocolate mud slide ", rating: 4.5)
let vanilla: Flavor = Flavor(name: "vanilla cream", rating: 4.0)
let sherbet: Flavor = Flavor(name: "lemon-lime sublime", rating: 4.7)
let bubbleGum: Flavor = Flavor(name: "bubble yum", rating: 3.0)

var flavors: [Flavor] = [chocolate, vanilla, sherbet, bubbleGum]
var sizes: [Size] = [Size.small, Size.medium, Size.large]
var toppings: [String] = ["sprinkles", "caramel bits", "gummy worms"]

let bronsonsIceCreamShop = IceCreamShop()

//Adds new items to our menu
bronsonsIceCreamShop.addFlavors(newFlavors: flavors)
bronsonsIceCreamShop.addSizes(newSizes: sizes)
bronsonsIceCreamShop.addToppings(newToppings: toppings)

bronsonsIceCreamShop.listTopFlavors()

let firstCone: Cone? = bronsonsIceCreamShop.orderCone(chosenFlavor: vanilla,
                                                      chosenTopping: nil,
                                                      chosenSize: Size.medium)

bronsonsIceCreamShop.checkRegister()
firstCone?.eat()

let secondCone: Cone? = bronsonsIceCreamShop.orderCone(chosenFlavor: sherbet,
                                                       chosenTopping: toppings[2],
                                                       chosenSize: Size.small)

bronsonsIceCreamShop.checkRegister()
