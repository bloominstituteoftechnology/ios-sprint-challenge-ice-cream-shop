
struct Flavor {
    var name : String
    var rating : Int
}

struct Cone {
    let flavor : Flavor
    let size : Size
    let topping : String
    
    func eat() {
        print("Mmm! I love \(flavor.name)")
    }
}

enum Size : Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
    case xl = 6.99
}

struct Menu {
    let flavorSelection : [Flavor]
    let sizesAvailable : [Size]
    let toppingsSelection : [String]
}

class IceCreamShop {
    
    let menu : Menu
    var totalSales = 0.0
   
    
    func listTopFlavors (flavorArray: [Flavor]) {
        var topFlavorArray = [String]()
        var message = "Our top flavors are"
        
        for flavor in flavorArray {
            if flavor.rating >= 4 {
                topFlavorArray.append(flavor.name)
            }
        }
        for flavor in topFlavorArray {
            if flavor == topFlavorArray.last {
            message += " and \(flavor)"
            } else {
                message += " \(flavor),"
            }
        
        }
        print(message)
    }
    
    func checkAvailability(cone: Cone) -> Bool {
        for flavor in menu.flavorSelection {
            if flavor.name == cone.flavor.name {
                return true
            }
            
    }
        return false
    }
    
    func orderCone(cone: Cone) -> Cone? {
        let newCone = cone
        
        if checkAvailability(cone: cone) == true {
      
        totalSales += newCone.size.rawValue
            print("Cool that will be $\(cone.size.rawValue)")
            
        } else if checkAvailability(cone: cone) == false {
        
            print("Sorry we don't have \(cone.flavor.name) ice cream.")
        }
        return newCone
    }
    
    func multipleOrders(cones: [Cone]) -> Double {
        
        var total = 0.0
        for cone in cones {
            if checkAvailability(cone: cone) == true {
                total += cone.size.rawValue
            }
        }
        
        print("Your total will be \(total)")
        totalSales += total
        return total
    }
    
    init(menu : Menu) {
        self.menu = menu
        
    }
}


// Flavors Seperate
let vanillaFlavor = Flavor.init(name: "Vanilla", rating: 5)
let chocolateFlavor = Flavor.init(name: "Chocolate", rating: 4)
let neopolitanFlavor = Flavor.init(name: "Neopolitan", rating: 3)
let cookieDoughFlavor = Flavor(name: "Cookie Dough", rating: 5)
let oreoCookieFlavor = Flavor(name: "Oreo Cookie", rating: 5)
let rainbowSherbert = Flavor(name: "Rainbow Sherbert", rating: 5)

// Array of Flavors
let johnsFlavorArray = [vanillaFlavor, chocolateFlavor, neopolitanFlavor]
let specialFlavorArray = [cookieDoughFlavor, oreoCookieFlavor, rainbowSherbert]

// Array of Toppings
let toppingsArray = ["Chocolate Chips", "Sprinkles", "Cookie Dough"]

// Cone Instances
let newCone = Cone(flavor: vanillaFlavor, size: .small, topping: toppingsArray[0])
let newCone2 = Cone(flavor: chocolateFlavor, size: .large, topping: toppingsArray[1])
let newCone3 = Cone(flavor: neopolitanFlavor, size: .medium, topping: toppingsArray[2])
let newCone4 = Cone(flavor: cookieDoughFlavor, size: .large, topping: toppingsArray[0])
let newCone5 = Cone(flavor: oreoCookieFlavor, size: .medium, topping: toppingsArray[1])
let newCone6 = Cone(flavor: rainbowSherbert, size: .xl, topping: toppingsArray[2])

let johnsAvailableSizes = [Size.small, Size.medium, Size.large, Size.xl]

// Menu
let johnsMenu = Menu(flavorSelection: specialFlavorArray, sizesAvailable: johnsAvailableSizes, toppingsSelection: toppingsArray)

// IceCreamShop Instance
let johnsIceCreamShop = IceCreamShop(menu: johnsMenu)

// Calling the listTopFlavors function in the IceCreamShop class
johnsIceCreamShop.listTopFlavors(flavorArray: johnsMenu.flavorSelection)

// Calling the eat function in the Cone struct
newCone.eat()

// Calling the orderCone function multiple times to make sure its adding the the total sales in the class
johnsIceCreamShop.orderCone(cone: newCone)
johnsIceCreamShop.orderCone(cone: newCone2)
johnsIceCreamShop.orderCone(cone: newCone3)
johnsIceCreamShop.orderCone(cone: newCone4)
johnsIceCreamShop.orderCone(cone: newCone5)
johnsIceCreamShop.orderCone(cone: newCone6)

// If someone has a big order I'm Calling the multipleOrders function here
let bigOrder = [newCone, newCone4, newCone5, newCone6]
johnsIceCreamShop.multipleOrders(cones: bigOrder)

// Johns Ice Cream Shop Total Sales
print("🍦Johns Ice Cream Shop🍦 has $\(johnsIceCreamShop.totalSales) in total sales.")




