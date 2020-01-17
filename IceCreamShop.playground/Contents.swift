struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.49
}

struct Cone {
    let flavor: Flavor
    var topping: String?
    var size: Size
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    let sizes: [Size]
    let toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        for flavorLoop in flavors {
            if flavorLoop.rating > 4.0 {
                print("Our top flavors are \(flavorLoop.name).")
            }
        }

    }
    
    func orderCone(flavor: Flavor, size: Size, toppings: String?) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: toppings, size: size)
        totalSales += size.rawValue
        if let _ = newCone.topping {
            print("Your \(newCone.flavor.name) with \(newCone.topping!) is \(size.rawValue)")
        } else {
            print("Your \(newCone.flavor.name) ice cream is \(size.rawValue)")
        }
        return newCone
    }
}

let chocolate = Flavor(name: "chocolate", rating: 10.0)
let vanilla = Flavor(name: "vanilla", rating: 3.0)
let flavorsArray = [chocolate, vanilla]

let sizesArray = [Size.small, Size.medium, Size.large]
let toppingsArray = ["sprinkles", "syrup", "peanuts"]

let myShop = IceCreamShop(flavors: flavorsArray, sizes: sizesArray, toppings: toppingsArray, totalSales: 0)

myShop.listTopFlavors()

print(myShop.totalSales)

let orderedCone = myShop.orderCone(flavor: chocolate, size: .large, toppings: toppingsArray[1])
print(orderedCone)
orderedCone?.eat()

print(myShop.totalSales)
