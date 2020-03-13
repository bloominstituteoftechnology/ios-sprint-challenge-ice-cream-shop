enum Size: Double {
    case small = 3.99
    case medium = 5.99
    case large = 6.99
}

enum Topping: String {
    case chocSprinkles = "chocolate sprinkles"
    case rainbowSprinkles = "rainbow sprinkles"
    case nuts = "nuts"
    case dip = "dipped in chocolate"
    case none = "with no frills"
    
}

struct Flavor {
    let name: String
    var rating: Int
}

struct Cone {
    let size: Size
    let flavor: Flavor
    let topping: String?
    
    init(size: Size, flavor: Flavor, topping: Topping?) {
        self.size = size
        self.flavor = flavor
        
        if let unwrappedTopping = topping {
        self.topping = unwrappedTopping.rawValue
        } else {
            self.topping = nil
        }
    }
    
    func eat() {
        print("Yum! I love the \(flavor.name) here!")
    }
        
}

class IceCreamShop {
    var flavors: [Flavor]
    var totalSales: Double = 0
    var conesSold: [Cone] = []
    
    func listTopFlavors() {
        print("Our customers really seem to enjoy...")
        for flavor in flavors {
            if flavor.rating >= 4 {
                print(flavor.name)
            }
        }
        print("Which can I get for you today?")
    }
    
    func conePrice(cone: Cone) -> Double {
        let salesTax = 1.135
        let conePrice = cone.size.rawValue * salesTax
        return(conePrice)
    }
    
    func orderCone(size: Size, flavor: Flavor, topping: Topping?) -> Cone? {
        let yourCone = Cone(size: size, flavor: flavor, topping: topping)
        totalSales = conePrice(cone: yourCone) + totalSales
        conesSold.append(yourCone)
        if let unwrappedTopping = topping {
            print("A \(size) \(flavor.name) cone with \(unwrappedTopping) will be \(conePrice(cone: yourCone)).")
        } else {
            print("A \(size) \(flavor.name) cone will be \(conePrice(cone: yourCone)).")
        }
        return(yourCone)
    }
    
    init(flavors: [Flavor]) {
        self.flavors = flavors
    }
}

let chocolate = Flavor(name: "Chocolate", rating: 4)
let vanilla = Flavor(name:"Vanilla", rating: 3)
let swirl = Flavor(name: "Chocolate Vanilla Swirl", rating: 3)
let mooseTracks = Flavor(name: "Moose Tracks", rating: 5)
let pistacio = Flavor(name: "Pistacio", rating: 4)
let mint = Flavor(name: "Mint Chocolate Chip", rating: 5)
let superman = Flavor(name: "Gum-ball Rainbow", rating: 3)
let sherbet = Flavor(name: "Orange Sherbet", rating: 3)
let rumRaisin = Flavor(name: "Rum Raisin", rating: 3)
let snickerdoodle = Flavor(name: "Snickerdoodle", rating: 4)

var jenAndBarrys = IceCreamShop(flavors: [chocolate, vanilla, swirl, mooseTracks, pistacio, mint, superman, sherbet, rumRaisin, snickerdoodle])

jenAndBarrys.listTopFlavors()

let myNewCone = jenAndBarrys.orderCone(size: .large, flavor: mint, topping: .dip)

myNewCone?.eat()
print(jenAndBarrys.totalSales)


