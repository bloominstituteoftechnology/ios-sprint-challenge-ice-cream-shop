// #1

struct Flavor {
    let name: String
    var rating: Double?
}

// #2

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

// #3

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat()  {
        print("Mmm! I love \(flavor.name)!")
    }
}

// #4

class IceCreamShop {
    var menuFlavors: [Flavor]
    var menuSizes: [Size]
    var menuToppings: [String]
    var totalSales: Double
    
    init(menuFlavors: [Flavor], menuSizes: [Size], menuToppings: [String]) {
        self.menuFlavors = menuFlavors
        self.menuSizes = menuSizes
        self.menuToppings = menuToppings
        self.totalSales = 0.0
    }
  
// #5
    
    func listTopFlavors() {
        var topFlavors: [String] = []
        for flavor in menuFlavors {
            if let unwrappedRating = flavor.rating {
                if unwrappedRating >= 4.0 {
                    topFlavors.append(flavor.name)
                }
            }
        }
        print("Our top flavors are \(topFlavors)")
    }
    
// #6

    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        if let unwrappedTopping = topping {
            let myCone = Cone(flavor: flavor, topping: unwrappedTopping, size: size)
            totalSales += myCone.size.rawValue
            return myCone
        } else {
            let myCone = Cone(flavor: flavor, topping: nil, size: size)
            totalSales += myCone.size.rawValue
            return myCone
        }
    }
    
}

// #7

let chocolate = Flavor(name: "Chocolate", rating: 4.6)
let vanilla = Flavor(name: "Vanilla", rating: 4.1)
let rockyRoad = Flavor(name: "Rocky Road", rating: 2.7)
let cherryGarcia = Flavor(name: "Cherry Garcia", rating: 5.0)
let pistachio = Flavor(name: "Pistachio", rating: 1.5)

// #8

let myIceCreamShop = IceCreamShop(menuFlavors: [chocolate, vanilla, cherryGarcia, rockyRoad], menuSizes: [Size.small, Size.medium, Size.large], menuToppings: ["Hot Fudge", "Sprinkles", "Caramel", "M&Ms"])

// #9

myIceCreamShop.listTopFlavors()

// #10

let newCone = myIceCreamShop.orderCone(flavor: cherryGarcia, topping: "M&Ms", size: .large)


// #11

// Cone.eat()


// #12

print(myIceCreamShop.totalSales)


// Stretch

