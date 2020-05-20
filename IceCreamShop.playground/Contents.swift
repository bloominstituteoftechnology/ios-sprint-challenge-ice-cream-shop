

struct Flavor {
    let name: String
    var rating: Double
}


enum Size: Double {
    case small
    case medium
    case large
}


struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    var price: Double
    
    func eat() {
        print("Mmm! I love \(self.flavor.name)")
    }
}
    

class IceCreamShop {
    

    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    
    var totalSales = 0.0
    

    init(flavors: [Flavor], sizes: [Size], toppings: [String]) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
    }
}


extension IceCreamShop {
    
    func listTopFlavors() {
        var arrayOfFlavourNames: [String] = []
        for flavour in self.flavors {
            if flavour.rating > 4.0 {
                arrayOfFlavourNames.append(flavour.name)
            }
        }
        
        var resultString = "Our top flavors are"
        for name in arrayOfFlavourNames {
            resultString += " "
            resultString += name
        }
        resultString += "."
        
        print(resultString)
    }
}


extension IceCreamShop {
    
    func orderCone(flavor: Flavor, size: Size, topping: String?, price: Double) -> Cone? {
        
        let cone = Cone(flavor: flavor, topping: topping, size: size, price: price)
        
        totalSales += cone.price
        
        var toppingString = "No topping"
        if let topping = cone.topping {
            toppingString = topping
        }
        let orderString = "Your \(cone.flavor.name) ice cream with \(toppingString) is \(cone.price) (for \(cone.size) size)"
        print(orderString)

        return cone
    }
}


let flavor1 = Flavor(name: "Flavour 1", rating: 1.0)
let flavor2 = Flavor(name: "Flavour 2", rating: 3.0)
let flavor3 = Flavor(name: "Flavour 3", rating: 6.0)
let arrayOfSizes: [Size] = [.small, .large, .small, .medium]
let arrayOfToppings: [String] = ["topping 1", "topping 2", "topping 3", "topping 4", "topping 5", "topping 6"]


let iceCreamShop = IceCreamShop.init(flavors: [flavor1, flavor2, flavor3], sizes: arrayOfSizes, toppings: arrayOfToppings)


iceCreamShop.listTopFlavors()


let newCone = iceCreamShop.orderCone(flavor: flavor3, size: .large, topping: nil, price: 21.2)


newCone?.eat() // optional chaining


if let myNewCone = newCone {
    myNewCone.eat()
}

print("Total sales - \(iceCreamShop.totalSales)")
