// 1. Create a struct called flavor. Add the follow

struct Flavor {
    
    var name: String
    var rating: Int
}

// 2. Create a enum called Size

enum Size: Double {
    
    case small = 3.99
    case medium = 4.99
    case large = 5.99
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


// 7. Create a few Flavor constants, an array of sizes, and an array of toppings

let vanillaBean = Flavor(name: "Vanilla Bean", rating: 4)
let chocolate = Flavor(name: "Chocolate", rating: 3)
let mooseTracks = Flavor(name: "Moose Tracks", rating: 5)
let caramelSwirl = Flavor(name: "Caramel Swirl", rating: 4)

let flavorArray: [Flavor] = [vanillaBean, chocolate, mooseTracks, caramelSwirl]
let sizeArray: [Size] = [.small, .medium, .large]
let toppingsArray: [String] = ["fudge", "caramel", "nuts", "whipped cream"]


// 8. Use the constants you just made to initialize a new IceCreamShop constant

let theIceCreamShop = IceCreamShop(flavors: flavorArray, toppings: toppingsArray, size: sizeArray, totalSales: 0)


// 9. Call the shops listTopFlavors function


theIceCreamShop.listTopFlavors()



// 10. Create a new Cone constant. Use the shop's orderCone function to assign the constant a Cone value.

let customerCone: Cone? = theIceCreamShop.orderCone(flavor: "Vanilla Bean", topping: "Caramel", size: .medium)

// 11. Using that new Cone costant, call its eat function without unwrapping the constant

customerCone?.eat()

// 12. Print the shop's totalSales and make sure that it has increased since you ordered a cone in step 10.

let firstSale = theIceCreamShop.orderCone(flavor: "Caramel Swirl", topping: "whipped cream", size: Size.large)

print(theIceCreamShop.totalSales)
