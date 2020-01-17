//Rohan Taylor iOS13

struct Flavor {
    var name : String
    var rating : Double
}

enum Size : Double {
    case small = 3.99
    case medium = 4.99
    case large = 6.99
}

struct Cone {
    var flavor : Flavor
    var topping : String?
    var size : Size
    
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}

class IceCreamShop {
    var flavors : [Flavor]
    var toppings : [String]
    var sizes : [Size]
    var totalSales : Double
    init(flavors : [Flavor], toppings : [String] ,sizes: [Size],totalSales : Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }

    func listTopFlavors() {
        let listOfTopflavors = flavors
        for flavor in listOfTopflavors {
            if flavor.rating >= 4.0 {
                flavors.append(flavor)
                print("Our top flavors are \(flavor.name)")
            } else {
                print("No top flavors right now")
            }
        }
    }

func orderCone(flavor: Flavor, topping: String?, size : Size) -> Cone? {
    let cone = Cone(flavor: flavor, topping: topping, size: size)
    totalSales = cone.size.rawValue
    
    if let topping = topping {
        print("Your \(flavor.name) ice cream with \(topping) is \(totalSales)")
    } else {
        print("Your \(flavor.name) ice cream is \(totalSales)")
    }
    return cone
    }
}

let cookiesAndCream = Flavor(name: "Cookies & Cream", rating: 10.0)
let strawberry = Flavor(name: "Strawberry", rating: 3.0)

let sizes: [Size] = [.small,.medium,.large]

let toppings = ["Oreos","Strawberries","Cookie Dough","Fudge","Caramel"]

let iceCream = IceCreamShop(flavors: [cookiesAndCream, strawberry], toppings: toppings , sizes: sizes, totalSales: 3.0 )

let cone1 = iceCream.orderCone(flavor: cookiesAndCream, topping: toppings[1], size: sizes[1])

cone1?.eat()


