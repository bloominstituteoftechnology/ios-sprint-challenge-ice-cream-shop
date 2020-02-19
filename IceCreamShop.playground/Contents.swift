enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}


// Flavor Struct
struct Flavor {
    let name: String
    let rating: Int
}


// Flavor Instances
let chocolate = Flavor(name: "chocolate", rating: 4)
let vanilla = Flavor(name: "vanilla", rating: 3)
let cookiesAndCream = Flavor(name: "Cookies and Cream", rating: 5)
let bubbleGum = Flavor(name: "Bubble Gum", rating: 1)
let strawberry = Flavor(name: "Strawberries", rating: 5)

// Array of Flavors
let arrayOfFlavors: [Flavor] = [chocolate, vanilla, cookiesAndCream, strawberry]

func listOfFlavors() {
    
     var topFlavors : [String] = []
    for flavor in arrayOfFlavors {
       // loop through all flavors
    // find those that are > 4
        if flavor.rating > 4 {
            topFlavors.append(flavor.name)
        }
    // create an empty array
    // print out (our top flavors are...)
        
    }
    print("Our top flavors are \(topFlavors)")
}

listOfFlavors()



struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm, I love \(flavor.name)")
    }
}
//create orderCone function
//have parameters for a cone
// return optional cone
//create constant that initializes the new cone using parameters form the function
// add price to totalsSale

//orderCone(flavor: "Chocolate", toppings: "Sprinkles", size: "Large")

class IceCreamShop {
    var flavors: [Flavor]
    var size: Size
    var toppings: String
    var totalSales: Double
    
    init(flavors: [Flavor], size: Size, toppings: String, totalSales: Double) {
        self.flavors = flavors
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func orderCone(flavor : Flavor, toppings: String?, size: Size ) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: toppings, size: size)
        
        if let topping = toppings {
            print("Your \(newCone.flavor.name) with \(topping) is \(newCone.size.rawValue)")
        } else {
           print("Your \(newCone.flavor.name) is \(newCone.size.rawValue)")
        }
        totalSales += size.rawValue
        
        
        return newCone
    }
    
    func listOfFlavors() {
        //
        var topFlavors : [String] = []
        for flavor in flavors {
            // loop through all flavors
            // find those that are > 4
            if flavor.rating > 4 {
                topFlavors.append(flavor.name)
            }
            // create an empty array
            // print out (our top flavors are...)
            
        }
        print("Our top flavors are \(topFlavors)")
}
}

let size = Size.medium

let iceCreamShop = IceCreamShop(flavors: [chocolate], size: size, toppings: "cherry", totalSales: 50)
iceCreamShop.orderCone(flavor: chocolate, toppings: nil, size: size)
//let shopsFlavors: [String] = ["Vanilla", "Chocolate", "Strawberry", "Butter Pecan", "Bubble Gum", "Coffee", "Cookies and Cream"]

let cookieDough = Flavor(name: "cookie dough", rating: 5)
let walnut = Flavor(name: "Walnut", rating: 2)
let rasberry = Flavor(name: "Rasberry", rating: 3)

let arrayOfToppings: [String] = ["Chocolate mint", "Sprinkles", "Peanuts", "Whipped Cream"]

let arrayOfSizes: [Size] = [Size.medium, Size.small, Size.large]

let iceCreamShop2 = IceCreamShop(flavors: [cookieDough], size: arrayOfSizes[0], toppings: arrayOfToppings[1], totalSales: 70.0)

iceCreamShop2.listOfFlavors()

//let cone2 = Cone(flavor: strawberry, topping: nil, size: Size.medium)

let cone2 = iceCreamShop.orderCone(flavor: rasberry, toppings: nil, size: .small)

cone2!.eat()

let iceCreamShop2Cone = iceCreamShop2.orderCone(flavor: walnut, toppings: "chocolate mint", size: .large)

//print(iceCreamShop2Cone!)
//iceCreamShop2.totalSales

