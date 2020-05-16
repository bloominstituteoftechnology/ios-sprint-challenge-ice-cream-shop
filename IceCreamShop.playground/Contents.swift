struct Flavor {
    let name: String
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
        print("Mmm! \(flavor.name) is my favorite!")
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
        self.totalSales = 0.00
    }
    
    func listTopFlavors() {
        var topFlavors: [String] = []
        var topFlavorString: String = "Our top flavors are "
        for flavor in flavors {
            if flavor.rating > 4.0 {
                topFlavors.append(flavor.name)
            }
        }
        for i in 0..<topFlavors.count {
            if topFlavors.count == 0 {
                topFlavorString = "There are no flavors rated above 4.0."
            } else if topFlavors.count == 1{
                topFlavorString = "\(topFlavors[0])"
            } else if i != (topFlavors.count - 1) {
                topFlavorString += "\(topFlavors[i]), "
            } else {
                topFlavorString += "and \(topFlavors[i])."
            }
        }
        print(topFlavorString)
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let cone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales += cone.size.rawValue
        var orderSummary: String = "Your \(flavor.name) ice cream "
        if let unwrappedTopping = topping {
            orderSummary += "with \(unwrappedTopping) "
        }
        orderSummary += "is \(size.rawValue)."
        print(orderSummary)
        return cone
    }
}

let vanilla = Flavor(name: "Vanilla", rating: 3.5)
let chocolate = Flavor(name: "Chocolate", rating: 4.1)
let peppermint = Flavor(name: "Peppermint", rating: 4.5)
let cherry = Flavor(name: "Black Cherry", rating: 4.8)
let peanutButter = Flavor(name: "Peanut Butter", rating: 3.5)

var flavors: [Flavor] = []
flavors.append(vanilla)
flavors.append(chocolate)
flavors.append(peppermint)
flavors.append(cherry)
flavors.append(peanutButter)

let sizes = [Size.small, Size.medium, Size.large]

var toppings = ["Fudge sauce", "Caramel", "Sprinkles", "Bananas", "Whipped Cream"]

let myShop = IceCreamShop(flavors: flavors, sizes: sizes, toppings: toppings)

myShop.listTopFlavors()

let myIceCream = Cone(flavor: cherry, topping: nil, size: .medium)

myShop.orderCone(flavor: myIceCream.flavor, topping: myIceCream.topping, size: myIceCream.size)

myIceCream.eat()

print(myShop.totalSales)
