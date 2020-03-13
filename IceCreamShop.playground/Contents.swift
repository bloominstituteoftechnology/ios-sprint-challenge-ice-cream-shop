// Ice-Cream Shop.

enum Flavor {
    case chocolate
    case vanilla
    case strawberry
}

enum Size: (Double) {
    case small = 1.99
    case medium = 2.99
    case large = 3.99
}

struct Cone {
    let flavors: Flavor
    var toppings: String
    var size: Size
}

let myFavCone = Cone(flavors: .chocolate, toppings: "Sprinkles", size: .large)
func eat() {
    print("MMM I Love .\(myFavCone.flavors)")
}
eat()

class IceCreamShop






