// 1. Create a struct called flavor
struct Flavor {
    
    var name: String
    var rating: Int
}

// 2. Create a enum called Size
enum Size: Double {
    
    case small = 2.99
    case medium = 3.99
    case large = 4.69
}

// 3. Create a struct called Cone. Create a function called eat. No arguments. It should print a string of text that include the name of the cone's flavor.
struct Cone {
    
    let flavor: String
    let topping: String?
    let size: Size  // referring to enum
    
    func eat() {
        print("Mmm! I love \(self.flavor)")
    }
}


// 4. Create a class called IceCreamShop. Create variables that hold various flavors, sizes, and toppings. Create a variable called totalSales (track how much moneu was made)
class IceCreamShop {
    
    var flavors: [Flavor]
    var toppings: [String]
    var size: [Size]
    var totalSales: Double
    
    init(flavors: [Flavor], toppings: [String], size: [Size], totalSales: Double) {
        self.flavors = flavors
        self.toppings = toppings
        self.size = size
        self.totalSales = totalSales
    }
    
    // 5. Create a function called listTopFlavors
    
    func listTopFlavors() {
        for flavor in flavors {
            if flavor.rating >= 4 {
                print("Our top flavors are \(flavor.name)")
            }
        }
    }
    
    // 6. Create function called orderCone
    
    func orderCone(flavor: String, topping: String?, size: Size) -> Cone? {
        let customersCone = Cone(flavor: flavor, topping: topping, size: size)
        if let unwrappedConeTopping = topping {
            print("Your \(customersCone.flavor) with \(unwrappedConeTopping) is \(customersCone.size.rawValue)")
        }
        totalSales += customersCone.size.rawValue
        return customersCone
        }
    // need to unwrap topping if let statement
}

// 7.
let vanillaBean = Flavor(name: "Vanilla Bean", rating: 4)
let mooseTracks = Flavor(name: "Moose Tracks", rating: 5)
let caramelSwirl = Flavor(name: "Caramel Swirl", rating: 4)

let flavorArray: [Flavor] = [vanillaBean, mooseTracks, caramelSwirl]
let sizeArray: [Size] = [.small, .medium, .large]
let toppingsArray: [String] = ["fudge", "caramel", "nuts", "whipped cream"]


// 8.
let theIceCreamShop = IceCreamShop(flavors: flavorArray, toppings: toppingsArray, size: sizeArray, totalSales: 0)

// 9.

theIceCreamShop.listTopFlavors()

// 10.

let customerCone: Cone? = theIceCreamShop.orderCone(flavor: "Moose Tracks", topping: "whipped cream", size: .medium)

// 11.

customerCone?.eat()

// 12.

let firstSale = theIceCreamShop.orderCone(flavor: "Vanilla Bean", topping: "whipped cream", size: Size.large)

print(theIceCreamShop.totalSales)
