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
        print("Mmm! I love \(flavor.name)")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double = 0
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String]) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
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
            
            print("Your \(myFlavor) with \(chosenTopping) is \(myConePrice).")
        }

    }

}

let chocolate = Flavor(name: "Chocolate", rating: 4.5)
let vanilla = Flavor(name: "Vanilla", rating: 4.0)
let strawberry = Flavor(name: "Strawberry", rating: 3.7)

var flavorsArray = [chocolate, vanilla, strawberry]

var coneSizes = [Size.small, Size.medium, Size.large]

var coneToppings = ["sprinkles", "crushed oreos", "chocolate chips"]

let aaronsIceCreamShop = IceCreamShop(flavors: flavorsArray, sizes: coneSizes, toppings: coneToppings)

aaronsIceCreamShop.listTopFlavors()

let newCone = Cone(flavor: vanilla, topping: "sprinkles", size: .medium)

aaronsIceCreamShop.orderCone(myFlavor: vanilla, mySize: .medium, myTopping: "sprinkles")

newCone.eat()
print(aaronsIceCreamShop.totalSales)




