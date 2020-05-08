struct Flavor {
    
    let name: String
    let rating: Int
    
}

enum Size: Double {
    
    case small = 2.99
    case medium = 3.99
    case large = 4.50
}


struct Cone {
    
    let flavor: Flavor
    var topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(self.flavor.name) ice cream!")
    }
    
}

class IceCreamShop {
    let flavors: [Flavor]
    let sizes: [Size]
    let topping: [String?]
    var totalSales: Double
    
    init(flavors: [Flavor], size: [Size], topping: [String?] ) {
        self.flavors = flavors
        self.sizes = size
        self.topping = topping
        self.totalSales = 0.0
    }
    
    func listTopFlavors() {
        let top = "Our top flavors are:"
        var topflavors: [String] = []
        
        for flavor in flavors {
            if flavor.rating >= 4 {
                topflavors.append(flavor.name)
            }
        }
        let list = topflavors.joined(separator: ", ")
        print("\(top) \(list).")
    }
    
    func orderCone(flavor: Flavor, size: Size, topping: String?) -> Cone?  {
        let customerCone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales += customerCone.size.rawValue
        print("Here is your \(customerCone.flavor.name) cone with \(customerCone.topping ?? "no toppings") the price comes to $\(customerCone.size.rawValue).")
        return customerCone
        
    }
    
}

let vanillaIceCream = Flavor(name: "vanilla", rating: 5)
let chocolateIceCream = Flavor(name: "chocolate", rating: 5)
let birthdayCake = Flavor(name: "birthday cake", rating: 3)
let mint = Flavor(name: "mint chocolate chip", rating: 2)
let strawberry = Flavor(name: "strawberry", rating: 3)
let halfBaked = Flavor(name: "half baked", rating: 4)

let sizes:[Size] = [.small, .medium, .large]

let toppings: [String?] = ["sprinkles", "chocolate chips", "whipped cream", "hot fudge"]

var sallysIceCream = IceCreamShop(flavors: [vanillaIceCream,chocolateIceCream,birthdayCake,mint,strawberry,halfBaked], size: sizes, topping: toppings)

sallysIceCream.listTopFlavors()

let myCone = sallysIceCream.orderCone(flavor: vanillaIceCream, size: .small, topping: nil)
let secondCone = sallysIceCream.orderCone(flavor: birthdayCake, size: .large, topping: "sprinkles")

myCone?.eat()
secondCone?.eat()

print(sallysIceCream.totalSales)
