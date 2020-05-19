// ice cream shop Craig Belinfante

//1
struct Flavor {
    var name: String
    var rating: Double
}

let flavor0 = Flavor(name: "chocolate", rating: 4.2)
let flavor1 = Flavor(name: "vanilla", rating: 2.9)
let flavor2 = Flavor(name: "strawberry", rating: 5)
let flavor3 = Flavor(name: "animal cookies", rating: 5)
let flavor4 = Flavor(name: "cherry", rating: 3.1)

let allFlavors = [flavor0, flavor1, flavor2, flavor3, flavor4]

//2
enum Size: Double {
    case small = 2.99
    case medium = 3.49
    case large = 4.49
}

let sizes = [Size.small, Size.medium, Size.large]

//3
struct Cone {
    let flavor: String
    let topping: String?
    var size: Size
}

let topping1 = "m&m's"
let topping2 = "oreos"
let topping3 = "chocolate chips"
let topping4 = "gummy worms"
let topping5 = "snowcaps"

let cone0 = Cone(flavor: "Regular", topping: nil, size: .small)
let cone1 = Cone(flavor: "Sugar Cone", topping: "gummy worms", size: .medium )
let cone2 = Cone(flavor: "Chocolate Dipped", topping: "chocolate chips", size: .small)
let cone3 = Cone(flavor: "Waffle Cone", topping: "m&m's", size: .large)

let allCones = [cone0, cone1, cone2, cone3]

func eat() {
    for flavor in allCones {
        print("Mmm! I love \(flavor.flavor)!")
    }
}

eat()

//4

class IceCreamShop {
    var choice: [Flavor]
    var amount: [Size]
    var coneChoice: [Cone]
    var totalSales: Double
    
    init(choice: [Flavor], amount: [Size], coneChoice: [Cone], totalSales: Double) {
        self.choice = choice
        self.amount = amount
        self.coneChoice = coneChoice
        self.totalSales = totalSales
    }
    func orderCone(flavor: String, topping: String?, size: Size) -> Cone? {
        let myOrder = Cone(flavor: flavor, topping: topping, size: size)
        
        if let unwrappedTopping = myOrder.topping {
            print("Your \(myOrder.flavor) ice cearm with \(unwrappedTopping) for \(myOrder.size.rawValue) is ready.")
        } else {
            print("Your \(myOrder.flavor) ice cream for \(myOrder.size.rawValue) is ready.")
        }
        
        totalSales += myOrder.size.rawValue
        
        return myOrder
    }
}


//5

func listTopFlavors() {
    for flavor in allFlavors {
        if flavor.rating >= 4 {
            print("\(flavor.name) is one of our best!" )
        }
    }
}

listTopFlavors()

//6
// in class
let shop = IceCreamShop(choice: allFlavors, amount: sizes, coneChoice: allCones, totalSales: 0.0)

shop.orderCone(flavor: "Chocolate", topping: topping5, size: .large)
shop.orderCone(flavor: "Vanilla", topping: topping3, size: .small)
shop.orderCone(flavor: "Strawberry", topping: nil, size: .medium)

print(shop.totalSales)
