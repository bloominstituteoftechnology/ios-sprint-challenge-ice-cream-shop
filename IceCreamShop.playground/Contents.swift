import Foundation

struct Flavor {
    let name: String
    var rating: Double
}

enum Size: Double, CaseIterable {
    case small = 2.99
    case medium = 4.99
    case large = 7.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    var fullName: String {
        "\(flavor.name) ice cream cone \(!topping.isEmpty ? "with " + topping : "")"
    }
    
    func eat() {
        print("This \(fullName), was delicious!")
    }
}

class IceCreamShop {
    let name: String
    let flavors: [Flavor]
    let toppings: [String]
    let sizes: [Size]
    
    var totalSales: Double = 0.0
    
    init(name: String, flavors: [Flavor], toppings: [String], sizes: [Size]) {
        self.name = name
        self.flavors = flavors
        self.toppings = toppings
        self.sizes = sizes
    }

    func listTopFlavors() {
        let topFlavors = flavors.filter { flavor in flavor.rating > 4.0 }
        if topFlavors.isEmpty {
            print("There are no top flavors at this time.")
            return
        }
        
        var result = ""
        for (index, flavor) in flavors.enumerated() {
            if result.isEmpty {
                result = flavor.name
            } else {
                result += ", "
                if index == flavors.count - 1 {
                    result += "and "
                }
                result += flavor.name
            }
        }
        
        print("Our top flavors are: \(result)")
    }
    
    func orderCone(flavor: Flavor, topping: String = "", size: Size) -> Cone? {
        let cone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales += size.rawValue
        print("Your \(cone.fullName) is \(size.rawValue)")
        return cone
    }
    
    func printTotalSales() {
        print("The total sales for \(name) is: \(totalSales)")
    }
    
    func open() {
        print("\(name) is now open for business!")
        var closed = false
        while !closed {
            
        }
    }
}

let flavors = [Flavor(name: "Vanilla", rating: 5.0),
               Flavor(name: "Chocolate", rating: 4.0),
               Flavor(name: "Mint", rating: 3.0)]
let toppings = ["Chocolate Chips",
                "Fudge",
                "Caramel",
                "Sprinkles"]
let sizes = Size.allCases

let iceCreamShop = IceCreamShop(name: "Sally Cones", flavors: flavors, toppings: toppings, sizes: sizes)
iceCreamShop.listTopFlavors()

let cone = iceCreamShop.orderCone(flavor: flavors[0], topping: toppings[2], size: .large)
cone?.eat()

iceCreamShop.printTotalSales()
