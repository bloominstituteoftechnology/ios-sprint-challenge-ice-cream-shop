import Foundation

enum Size: Double {
    case small = 3.99
    case medium = 4.49
    case large = 5.24
}

struct Flavor {
    let name: String
    var rating: Double
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat(){
        print("Mmm! I love \(flavor.name)!")
    }
    
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        
        var flavorList = [Flavor]()
        
        for flavor in flavors {
            if flavor.rating > 4.0 {
                flavorList.append(flavor)
            }
        }
        
        switch flavorList.count {
        case 0:
            print("All of our flavors are bad.")
        case 1:
            print("The top flavor is \(flavorList[0].name).")
        case 2:
            print("Our top flavors are \(flavorList[0].name) and \(flavorList[1].name).")
        case 3...:
            var sayFlavors = "Our top flavors are"
            for num in 0..<flavorList.count {
                if num == (flavorList.count-1) {
                    sayFlavors += " and \(flavorList[num].name)."
                } else {
                    sayFlavors += " \(flavorList[num].name),"
                }
            }
            print(sayFlavors)
        default:
            break
        }
        
    }
    
    func orderCone(flavor: Flavor, topping: String? = nil, size: Size) -> Cone? {
        
        if flavors.firstIndex(where: {$0.name == flavor.name}) == nil {
           print("I'm sorry, we don't have that flavor")
            return nil
        }
        
        let cone = Cone(flavor: flavor, topping: topping, size: size)
        
        totalSales += size.rawValue
        
        if let realTopping = cone.topping {
            print("Your \(cone.flavor.name) ice cream with \(realTopping) is \(cone.size.rawValue).")
        } else {
            print("Your \(cone.flavor.name) ice cream is \(cone.size.rawValue).")
        }
        
        return cone
    }
    
}

let mint = Flavor(name: "mint", rating: 4.3)
let chocolate = Flavor(name: "chocolate", rating: 4.1)
let vanilla = Flavor(name: "vanilla", rating: 4.4)
let superman = Flavor(name: "superman", rating: 4.9)
let strawberry = Flavor(name: "strawberry", rating: 3.8)
let sherbet = Flavor(name: "sherbet", rating: 4.2)
let neopolitan = Flavor(name: "neopolitan", rating: 4.1)

let sizes: [Size] = [.small, .medium, .large]

let toppings = ["sprinkles", "fudge"]

let iceCreamShop = IceCreamShop(flavors: [neopolitan, chocolate, vanilla, superman, strawberry, sherbet], sizes: sizes, toppings: toppings, totalSales: 0.00)

iceCreamShop.listTopFlavors()

let newCone = iceCreamShop.orderCone(flavor: vanilla, topping: "sprinkles", size: .large)
newCone?.eat()

print(iceCreamShop.totalSales)

let noCone = iceCreamShop.orderCone(flavor: mint, topping: "sprinkles", size: .large)

print(iceCreamShop.totalSales)
