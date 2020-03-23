struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

//enum Toppings: Double {
//    case sprinkles = 0.15
//    case crushedOreos = 0.20
//    case cherry = 0.50
//    case syrup = 0.25
//    case whippedCream = 0.60
//    case none = 0
//}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double = 0
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        var topFlavors: [String] = []
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                topFlavors.append(flavor.name)
            }
        }
        print("Our top flavors are: \(topFlavors)")
    }
    
    func orderCone(myFlavor: Flavor, mySize: Size, myTopping: String?) {
        let myConePrice: Double
        
        if let chosenTopping = myTopping {
            
            let myCone = Cone(flavor: myFlavor, topping: chosenTopping, size: mySize)
            
            myConePrice = myCone.size.rawValue
            
            totalSales += myConePrice
            
            print("Yout \(myFlavor) with \(chosenTopping) is \(myConePrice).")
        }
    }

}




