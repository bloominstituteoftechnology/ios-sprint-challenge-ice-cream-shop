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
        let string = "Your \(cone.flavor.name) ice cream with \(cone.topping) is \(cone.size.rawValue)"
        print(string)
        return cone
    }
}

// 7.
let vanilla = Flavor(name: "vanilla", rating: 2.5)
let chocolate = Flavor(name: "chocolate", rating: 10.0)
let strawberry = Flavor(name: "strawberry", rating: 3.5)
let mango = Flavor(name: "mango", rating: 8.0)

let availableSizes: [Size] = [Size.small, Size.medium, Size.large]

let toppings: [String] = ["sprinkles", "chocolate sauce", "gummy bears"]

// 8.
let myShop = IceCreamShop(flavors: [vanilla, chocolate, strawberry, mango],
                          sizes: availableSizes,
                          toppings: toppings)

// 9.
myShop.listTopFlavors()

// 10.
let myCone = myShop.orderCone(flavor: vanilla, topping: nil, size: .small)

// 11.
myCone?.eat()

// 12.
print(myShop.totalSales)

// What's left? 1. fix the print string in the orderCone func 2. fix chocolate flavor 3. Format the various strings to account for edge cases, such as if there are no flavors with a rating above 4.0, finishing the last flavor with "and". For example,", , and ", instead of just ", , " 4. In the orderCone function, check to make sure the flavor that the person requested exists on the menu.
