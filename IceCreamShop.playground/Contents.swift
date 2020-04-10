
struct Flavor {
    var name: String
    var rating: Double
    
}

enum Size : Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
    
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat () {
        print("Mmm! I love \(flavor.name)!!")
    }
}



class IceCreamShop {
    
    var flavors: [Flavor]
    var toppings: [String?]
    var size: [Size]
    var totalSales: Double
    
    init(flavors: [Flavor], toppings: [String?], size: [Size], totalSales: Double){
        self.flavors = flavors
        self.toppings = toppings
        self.size = size
        self.totalSales = totalSales
        
    }
    func listTopFlavors() {
        
        for flavor in flavors {
            if flavor.rating > 4.0 {
                print("\(flavor.name) is one of our top flavors!")
            }
        }
        
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales += size.rawValue
        if let toppings = topping {
            // If there is a topping, do something
            print("Your \(flavor.name) with \(toppings) is \(size.rawValue)")
        } else {
            // If there are no toppings then this is what should happen
            print("Your \(flavor.name) is \(size.rawValue)")
        }
        return newCone
        
    }
}



var flavorArray: [Flavor] = []
let flavorOne = Flavor(name: "Cookie Dough", rating: 3.5)
let flavorTwo = Flavor(name: "Mint Chocolate Chip", rating: 4.9)
let flavorThree = Flavor(name: "Cookies and cream", rating: 4.5)
flavorArray.append(flavorOne)
flavorArray.append(flavorTwo)
flavorArray.append(flavorThree)

let sizeArray : [Size] = [Size.large, Size.medium, Size.small]

let chocolateSyrup = "Chocolate Syrup"
let caramel = "Caramel"
let cherrie = "Cherrie"

let toppingsArray : [String] = [chocolateSyrup, caramel, cherrie]

let newIceCreamShop = IceCreamShop(flavors: flavorArray, toppings: toppingsArray, size: sizeArray, totalSales: 0.0)


newIceCreamShop.listTopFlavors()

let myCone = newIceCreamShop.orderCone(flavor: flavorOne, topping: caramel, size: .large)
myCone?.eat()


print(newIceCreamShop.totalSales)
