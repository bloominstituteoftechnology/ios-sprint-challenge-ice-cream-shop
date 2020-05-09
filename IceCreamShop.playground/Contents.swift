
struct Flavor {
    let name: String
    let rating: Double

}
let strawberry = Flavor(name: "Strawberry", rating: 10)
let chocolate = Flavor(name: "Chocolate", rating: 7)
let vanilla = Flavor(name: "Vanilla", rating: 6)
let pistachio = Flavor(name: "Pistachio", rating: 3)

let allFlavors = [strawberry, chocolate, vanilla, pistachio]

print(strawberry.name)

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let size: Size
    let topping: String?
    let flavor: Flavor
    
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}

Cone(size: .large, topping: "Nuts", flavor: chocolate).eat()

class IceCreamShop {
    var iceCreamFlavors: [Flavor]
    var totalSales: Double
    var coneType: [Cone]
    
    init(iceCreamFlavors: [Flavor], totalSales: Double, coneType: [Cone]) {
    self.iceCreamFlavors = iceCreamFlavors
    self.totalSales = totalSales
    self.coneType = coneType
        
    }



func orderCone(myOrder: Cone) -> Cone? {
       if let unwrappedOrder = myOrder.topping {
           print("Your \(myOrder.flavor.name) cone with \(unwrappedOrder) is \(myOrder.size.rawValue)")
       totalSales += myOrder.size.rawValue
        print(totalSales)
      } else {
           print("Your \(myOrder.flavor.name) cone is \(myOrder.size.rawValue)")
        myOrder.size.rawValue
     totalSales += myOrder.size.rawValue
        print(totalSales)
}
    return myOrder
}

func listTopFlavors() {
    for topFlavors in allFlavors {
    if topFlavors.rating >= 4.0 {
        print("\(topFlavors.name) is a top flavor.")
        }
    }
}
    func listTopFlavors2() {
        for newTopFlavors in newFlavors {
            if newTopFlavors.rating >= 4.0 {
                print("\(newTopFlavors.name) is a top flavor.")
            }
        }
    }
}
var cone1 = Cone(size: .medium, topping: "Whipped Cream", flavor: strawberry)
var cone2 = Cone(size: .small, topping: "Chocolate Sauce", flavor: vanilla)
var cone3 = Cone(size: .large, topping: "Cherry", flavor: pistachio)
var cone4 = Cone(size: .medium, topping: nil, flavor: chocolate)

let myIceCreamShop = IceCreamShop(iceCreamFlavors: allFlavors, totalSales: 0, coneType: [cone4])
myIceCreamShop.listTopFlavors()
myIceCreamShop.orderCone(myOrder: cone4)
myIceCreamShop.orderCone(myOrder: cone3)
myIceCreamShop.orderCone(myOrder: Cone(size: .large, topping: nil, flavor: strawberry))


let butterPecan = Flavor(name: "Butter Pecan", rating: 9)
let peach = Flavor(name: "Peach", rating: 6)
let mango = Flavor(name: "Mango", rating: 4)
let neopolitan = Flavor(name: "Neopolitan", rating: 3)

let newFlavors = [butterPecan, peach, mango, neopolitan]
let newSizes: [Size] = [.large, .medium, .small]
let newToppings:[String?] = []


let cone5 = Cone(size: .large, topping: nil, flavor: mango)
let cone6 = Cone(size: .medium, topping: "Gummy Worms", flavor: neopolitan)
let cone7 = Cone(size: .small, topping: "Oreos", flavor: peach)

cone7.eat()

let newCones = [cone5, cone6, cone7]
let newestIceCreamShop = IceCreamShop(iceCreamFlavors: newFlavors, totalSales: 0.0, coneType: newCones)

newestIceCreamShop.orderCone(myOrder: cone7)
newestIceCreamShop.orderCone(myOrder: cone6)
newestIceCreamShop.listTopFlavors2()



print(myIceCreamShop.totalSales)
print(newestIceCreamShop.totalSales)
