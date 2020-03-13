


// Create a struct called Flavor. Add the following properties. Think about what type they should be:
struct Flavor {
    let name: String
    let rating: Int
}

let myFlavor1 = Flavor(name: "Vanilla", rating: 8)
let myFlavor2 = Flavor(name: "Rocky Road", rating: 10)
let myFlavor3 = Flavor(name: "Strawberry", rating: 3)
let myFlavor4 = Flavor(name: "Pistachio", rating: 2)

var allMyFlavors = [myFlavor1, myFlavor2, myFlavor3, myFlavor4]

// Create an enum called Size.

//Give it a case for small, medium, and large.


enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 6.99
}

//Create a struct called Cone.

struct Cone {
    let flavors: Flavor
    let topping: String?
    let size: Size
    
}


func eat() -> String{
    return "MMM! I love \(myFlavor1.name)!"
}
    
print(eat())

// Create a class called IceCreamShop.

class IceCreamShop {
    var menuFlavor: [Flavor]
    var totalSales: Double

    init(menuFlavor: [Flavor], totalSales: Double) {
        self.menuFlavor = menuFlavor
        self.totalSales = totalSales
    }
}

// 5. If a customer asks which flavors are available, we need to be ready to tell them. To accomplish this, do the following:


func listTopFlavors() {
    for topFlavors in allMyFlavors {
        if topFlavors.rating > 4 {
            print("Our top flavors are \(topFlavors.name)!")
}
    }
}

listTopFlavors()

// 6. Customers will need a way to order a cone.


func orderCone(flavor: Flavor, toppings: String?, size: Size) -> Cone? {
    let newCone = Cone(flavors: flavor, topping: toppings, size: size)
    if let unwrappedTopping = toppings {
        print("Your \(flavor.name) with \(unwrappedTopping) is \(size.rawValue)")
    } else {
        print(("Your \(flavor.name) ice cream is \(size.rawValue)"))
    }
    return newCone
}

let arrayOfSizes: [Size]  = [.small, .medium, .large]

enum Toppings: String {
    case oreo = "Oreos"
    case sprinkles = "Sprinkles"
    case fudge = "Fudge"
}

let arrayOfToppings: [Toppings] = [.oreo, .sprinkles, .fudge]

