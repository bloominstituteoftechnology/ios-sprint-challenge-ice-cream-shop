struct Flavor {
    let name: String
    let rating: Double
}

struct Topping {
    let name: String
    let price: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: Topping?
    let size: Size
    
    func eat(){
        print("Mmm! I love \(flavor.name)!")
    }
}

class IceCreamShop {
    // Which sizes available won't change but setting the others to var as may want to add more flavors or toppings later
    let sizes: [Size]
    var flavorList: [Flavor]
    var toppingList: [Topping]
    var totalSales: Double
    
    init(sizes: [Size], flavorList: [Flavor], toppingList: [Topping], totalSales: Double = 0) {
        self.sizes = sizes
        self.flavorList = flavorList
        self.toppingList = toppingList
        self.totalSales = totalSales
    }
    
    func listTopFlavors(){
        var topFlavors = "Our top flavors are: "

        for n in 0...flavorList.count-1 {
            if flavorList[n].rating > 4.0 {
                // Using n so I can more easily grab the index for setting up the grammar
                if flavorList.count > 1 && n == flavorList.count-2 {
                    topFlavors += "\(flavorList[n].name) and "
                } else if n == flavorList.count-1{
                    topFlavors += "\(flavorList[n].name)"
                } else {
                    topFlavors += "\(flavorList[n].name) "
                }
            }
        }
        print(topFlavors)
    }
    
    func orderCone(size: Size, orderedFlavor: String, orderedTopping: String?) -> Cone?{
        var myFlavor: Flavor?
        for flavor in flavorList {
            if flavor.name == orderedFlavor{
                myFlavor = flavor
                break
            }
        }
        
        guard let unwrappedFlavor = myFlavor else {
            print("Sorry. We don't have that flavor.")
            return nil
        }
        
        var myTopping: Topping?
        for topping in toppingList {
            if topping.name == orderedTopping {
                myTopping = topping
                break
            }
        }
        
        let order = Cone(flavor: unwrappedFlavor, topping: myTopping, size: size)
        var orderPrice = size.rawValue
        
        var orderString = "Your \(unwrappedFlavor.name) ice cream "
        
        if let myTopping = myTopping{
            orderString += "with \(myTopping.name) "
            orderPrice += myTopping.price
        }
        
        orderString += "is \(orderPrice)."
        totalSales += orderPrice
        print(orderString)
        return order
    }
}
var mint = Flavor(name: "mint", rating: 3.2)
var vanilla = Flavor(name: "vanilla", rating: 4.7)
var chocolate = Flavor(name: "chocolate", rating: 4.4)

var sprinkles = Topping(name: "sprinkles", price: 0.25)
var chocolateChips = Topping(name: "chocolate chips", price: 0.30)
var peanuts = Topping(name: "peanuts", price: 0.2)

var availableSizes = [Size.small, Size.medium, Size.large]

let myIceCreamShop = IceCreamShop(sizes: availableSizes,
                                  flavorList: [mint, vanilla, chocolate],
                                  toppingList: [sprinkles, chocolateChips, peanuts])

myIceCreamShop.listTopFlavors()

let myCone = myIceCreamShop.orderCone(size: .small, orderedFlavor: "mint", orderedTopping: "peanuts")

myCone?.eat()

print(myIceCreamShop.totalSales)
