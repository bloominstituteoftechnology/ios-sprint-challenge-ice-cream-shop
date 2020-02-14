// Ice Cream Project Hector Ledesma

struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(self.flavor)")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String]) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = 0
    }
    
    func listTopFlavors() {
        print("Our top flavors are: ")
        for f in self.flavors {
            if f.rating > 3 {
                print(f.name)
            }
        } // End of for loop
    } // End of listTpoFlavors method
    
    func orderCone(flavor: Flavor, topping: String? = nil, size: Size) -> Cone? {
        let cone = Cone(flavor: flavor, topping: topping, size: size) // Uses passed values to initialize new cone
        self.totalSales += cone.size.rawValue // Add price to store's total
        
        // Composing the print out in seperate lines. Makes it more readable and adjustable. Got this idea from Mark's airport code.
        print("Your \(cone.flavor.name)", terminator: " ") // Prints name of icecream just purchased.
        if let top = cone.topping {
            print("with \(top)", terminator: " ") // If there's a topping, add this to the string
        } // Uwrap
        print("is \(cone.size.rawValue)") // Prints raw value of the size given
        
        return cone
    } // End of orderCone function
    
} // End of IceCreamShop Class declaration

// Add all flavors
let vanilla = Flavor(name: "Vanilla", rating: 5.00)
let mint = Flavor(name: "Mint", rating: 4.25)
let lime = Flavor(name: "Lime", rating: 3.75)
let chocolate = Flavor(name: "Chocolate", rating: 4.90)

// Sizes array
let sizes: [Size] = [.large, .medium, .small]

// Toppings array
let toppings: [String] = ["M&Ms", "Cookies", "Sprinkles", "Chocolate Chips"]
