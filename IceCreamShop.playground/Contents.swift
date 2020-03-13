
struct Flavor {
    let name: String
    let rating: Int
}

let myFlavor1 = Flavor(name: "Vanilla", rating: 8)
let myFlavor2 = Flavor(name: "Rocky Road", rating: 10)
let myFlavor3 = Flavor(name: "Strawberry", rating: 3)
let myFlavor4 = Flavor(name: "Pistachio", rating: 2)

var allMyFlavors = [myFlavor1, myFlavor2, myFlavor3, myFlavor4]

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 6.99
}


struct Cone {
    let flavors: String
    let topping: String?
    let size: Size
    
}

let myCone1 = Cone(flavors: "Vanilla", topping: nil, size: Size.small)
let myCone2 = Cone(flavors: "Strawberry", topping: "Sprinkles", size: Size.large)
let myCone3 = Cone(flavors: "Rocky Road", topping: "Oreos", size: Size.medium)

var allMyCones = [myCone1, myCone2, myCone3]




func eat() -> String{
    return "MMM! I love \(myFlavor1.name)!"
}
    
print(eat())






class IceCreamShop {
    var menuFlavor: [Flavor]
    var size: [Size]
    var toppings: [String]
    var totalSales: Double

    init(menuFlavor: [Flavor], size: [Size], toppings: [String], totalSales: Double) {
        self.menuFlavor = menuFlavor
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
}

func listTopFlavors() {
    for topFlavors in allMyFlavors {
        if topFlavors.rating > 4 {
            print("Our top flavors are \(topFlavors.name)!")
}
    }
}

listTopFlavors()

func orderCone(cone: (flavors: String, toppings: String?, size: Double)) -> (flavors: String, toppings: String?, size: Double) {
    let newCone = Cone(flavors: allMyFlavors, topping: <#T##String?#>, size: <#T##Size#>)
    
}




