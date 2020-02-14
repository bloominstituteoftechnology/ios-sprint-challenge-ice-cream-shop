// 1.
struct Flavor {
    var name: String
    var rating: Double
}

// 2.
enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

// 3.
struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size

    func eat() {
        print("Mmm! I love \(self.flavor.name)!")
    }
}

// 4-6.
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
        var string = ""
        for flavor in self.flavors {
            if flavor.rating >= 4.0 {
                string += "\(flavor.name), "
            }
        }
       print(string)
    }
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let cone = Cone(flavor: flavor, topping: topping ?? "no toppings", size: size)
        self.totalSales += cone.size.rawValue
        // Create a string that tells the price of the cone, along with its flavor and topping. NOTE: account for the potential lack of a topping on the Cone in that string by using optional binding (if-let). For example, the string could say "Your mint ice cream with chocolate chips is 3.99", or "Your vanilla ice cream is 5.99." Print the string.
        var string = ""
        string += "Price: \(cone.size.rawValue), Flavor: \(cone.flavor), Topping: \(cone.topping)"
        return cone
    }
}

// 7. At the bottom of the playground, create a few Flavor constants, an array of sizes, and an array of toppings.

let vanilla = Flavor(name: "vanilla", rating: 2.5)
let chocolate = Flavor(name: "chocolate", rating: 10.0)
let strawberry = Flavor(name: "strawberry", rating: 3.5)
let mango = Flavor(name: "mango", rating: 8.0)

let availableSizes: [Size] = [Size.small, Size.medium, Size.large]

let toppings: [String] = ["sprinkles", "chocolate sauce", "gummy bears"]

// 8. Use the constants you just made to initialize a new IceCreamShop constant.

let myShop = IceCreamShop(flavors: [vanilla, chocolate, strawberry, mango],
                          sizes: availableSizes,
                          toppings: toppings)

// 9. Call the shop's listTopFlavors function and make sure it runs correctly.

myShop.listTopFlavors()

// 10. Create a new Cone constant. Use the shop's orderCone function to assign the constant a Cone value.

let myCone = myShop.orderCone(flavor: vanilla, topping: nil, size: .small)

// 11. Using that new Cone constant, call its eat function without unwrapping the constant.

myCone?.eat()

// 12. Print the shop's totalSales and make sure that it has increased since you ordered a cone in step 10. Validate your work through running your playground and ensure that your code operates as designed.

//print(myShop.totalSales)
