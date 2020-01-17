
struct Flavor: Equatable {
    let name: String
    let rating: Double
    
    static func ==(lhs: Flavor, rhs: Flavor) -> Bool {
        return lhs.name == rhs.name && lhs.rating == rhs.rating
    }
}

enum Size: Double {
    case small = 3.99
    case medium = 5.99
    case large = 7.99
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmmm! I love \(flavor.name)!")
    }
    
}

class IceCreamShop {
    var flavors: [Flavor]
    var toppings: [String]
    var sizes: [Size]
    var totalSales: Double = 0
    
    init(flavors: [Flavor] = [], toppings: [String] = [], sizes: [Size]) {
        self.flavors = flavors
        self.toppings = toppings
        self.sizes = sizes
    }
    
    func listTopFlavors() {
        var flavorString = "Our top flavors"
        for (index, flavor) in flavors.enumerated() {
            if flavor.rating > 4.0 {
                if index == 0 {
                    flavorString += " are "
                    flavorString += flavor.name
                } else {
                    flavorString += " and " + flavor.name
                }
                
            }
            
        }
        
        if flavorString == "Our top flavors" {
            print("We don't have enough ratings to list top flavors")
        } else {
            print(flavorString)
        }
        
        
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        
        guard flavors.firstIndex(of: flavor) != nil else { return nil }
        
        let cone = Cone(flavor: flavor, topping: topping, size: size)
        
        
        switch cone.size {
            case .small:
                totalSales += Size.small.rawValue
            case .medium:
                totalSales += Size.medium.rawValue
            case .large:
                totalSales += Size.large.rawValue
        }
        
        var toppingString = ""
        
        if let toppingValue = cone.topping {
            toppingString +=  " with \(toppingValue)"
        }
        
        print("Your \(cone.flavor.name) ice cream\(toppingString) is \(cone.size.rawValue)")
        
        return cone
        
    }
    
}


let flavors = [Flavor(name: "Mint", rating: 8), Flavor(name: "Chocolate Chip", rating: 9), Flavor(name: "Strawberry", rating: 3), Flavor(name: "Oreo", rating: 5), Flavor(name: "Caramel", rating: 2)]

let flavorsTest2 = [Flavor(name: "Mint", rating: 3), Flavor(name: "Chocolate Chip", rating: 2), Flavor(name: "Strawberry", rating: 3), Flavor(name: "Oreo", rating: 1), Flavor(name: "Caramel", rating: 2)]

let fakeFlavor = Flavor(name: "fake", rating: 1)

let sizes: [Size] = [.small, .medium, .large]

let toppings = ["Chocolate Chips", "Hot Fudge", "Sprinkles", "Chocolate Sprinkles", "Cherries"]

let iceCreamShop = IceCreamShop(flavors: flavors, toppings: toppings, sizes: sizes)

iceCreamShop.listTopFlavors()

let cone = iceCreamShop.orderCone(flavor: flavors[3], topping: toppings[1], size: .large)

cone?.eat()

print(iceCreamShop.totalSales)




