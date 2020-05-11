//bryan cress
// ice cream shop sprint challenge

// The app will need to be able to create an ice cream shop model object, give it a menu of flavors, toppings and ice cream cone sizes and let people order from the menu.


struct Flavor{
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
        print("Mmm i love \(flavor.name).")
        }
    }


class IceCreamShop {
    var flavors: [Flavor]
    var toppings: String
    var sizes: [Size]
    var totalSales: Double
    
    init(shopFlavors: [Flavor], shopToppings: String, shopSizes: [Size], shopTotalSales: Double) {
        
        flavors = shopFlavors
        toppings = shopToppings
        sizes = shopSizes
        totalSales = shopTotalSales
    }


    // this function will list out any ice cream flavors with a rating of 4.0 or higher to the customer
    func listTopFlavors() {
           for topflavor in myShop.flavors {
               if topflavor.rating >= 4.0 {
                   let topFlavorsString: String = "Our top flavors are \(topflavor.name)"
                
                   print(topFlavorsString)
               }
               
           }
       }
    
}


//this function allows for a customer to order a cone and also adds the price of the customers cone to the total sales of the ice cream shop
func orderCone(topping: String?, flavor: Flavor, size: Size) -> Cone? {
    let newCone = Cone(flavor: flavor, topping: topping, size: size)
    myShop.totalSales += newCone.size.rawValue
    if let toppings = newCone.topping {
        print("Your \(newCone.flavor.name) ice cream with \(toppings) is \(newCone.size.rawValue)")
    }
    return newCone
}


        // Instances Of Flavors
    let vanilla = Flavor(name: "Vanilla", rating: 4.0)
    let chocolate = Flavor(name: "Chocolate", rating: 5.0)
    let strawberry = Flavor(name: "Strawberry", rating: 3.0)

    
    
    //Instance of IceCreamShop
let myShop = IceCreamShop(shopFlavors: [vanilla,chocolate,strawberry], shopToppings: "shopToppings", shopSizes: [.small, .medium, .large], shopTotalSales: 0.00)


 
myShop.listTopFlavors()


let newCone = orderCone(topping: "Sprinkles", flavor: vanilla, size: .medium)
let anotherCone = orderCone(topping: "Gummy Bears", flavor: strawberry, size: .large)

newCone?.eat()


print(myShop.totalSales)


let shopToppings = ["Sprinkles", "Chocolate Sprinkles", "Choclate Syrup", "Gummy Bears"]
