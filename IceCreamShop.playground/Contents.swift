





struct Flavor {
    var name: String
    var rating: Double
}


enum Size: Double {
    case small = 3.99
    case medium = 4.99 //might ned to be changed
    case large = 5.99 //might ned to be changed
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Hmm! I love \(flavor)!")
    }
}

class IceCreamShop {
    //STEP 4
    
    var flavors: [Flavor]
    var totalSales: Double
    
    init(totalSales: Double, flavors: [Flavor]) {
        self.totalSales = totalSales
        self.flavors = flavors
    }
    
    func listTopFlavors() {
        for flavor in flavors {
            var topFlavors: String = ""
            if flavor.rating > 4.0 {
                topFlavors = topFlavors + ", " + flavor.name
            }
            print("Our top flavors are \(topFlavors)")
        }
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        let priceOfCone = size.rawValue
        
        if let unWrappedTopping = topping {
            print("Your \(flavor) ice cream with \(unWrappedTopping) is \(size.rawValue)")
        } else {
            print("Your \(flavor) ice cream is $\(size.rawValue)")
        }
        
        totalSales += priceOfCone
        
        return newCone
    }
}


let flavor1 = Flavor(name: "Mint", rating: 4.5)
let flavor2 = Flavor(name: "Vanilla", rating: 3.2)
let flavor3 = Flavor(name: "Chocolate", rating: 4.1)

let arrayOfSizes: [Size]
let arrayOfToppings: [Topping]


let iceCreamShop = IceCreamShop(totalSales: 0, flavors: [flavor1, flavor2, flavor3])
