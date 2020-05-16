//Coded by James Sedlacek
//Date: 05/15/2020

//Create a struct called Flavor. Add the following properties. Think about what type they should be:
// name
// rating
struct Flavor {
    var name: String
    var rating: Int
}

//Create an enum called Size.
//Give it a case for small, medium, and large.
//Make the enum have Double raw values. The raw value should represent the size's price. For example, small might be 3.99.

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

//Create a struct called Cone.
//Give the struct properties (constants) that hold a flavor, topping (as a String), and size.
//Create a function called eat. It shouldn't have any arguments. It should print a string of text that includes the name of the cone's flavor. For example: "Mmm! I love !"

struct Cone {
    var flavor: Flavor
    var topping: String?
    var size: Size
    
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}

//Create a class called IceCreamShop.
//An ice cream shop needs a menu, so create variables that hold the various flavors, sizes, and toppings you want to have in your shop.
//Create a variable called totalSales. This will be used to keep track of how much money was made.

class IceCreamShop {
    var totalSales: Double
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    
    init(flavors: [Flavor], toppings: [String], sizes: [Size]){
        self.totalSales = 0.0
        self.flavors = flavors
        self.toppings = toppings
        self.sizes = sizes
    }
    
    /*
     If a customer asks which flavors are available, we need to be ready to tell them.
     In the function, build a string that lists out the names of each flavor in the shop's flavors array whose rating is over 4.0. For example, the string might say "Our top flavors are ." Hint: You may want to loop through the array of flavors in order to access each one's name.
     When the string has been created, print it.
     */
    func listTopFlavors() {
        var message: String = "Our top flavors are "
        var topFlavors: [String] = []
        var totalTopFlavors: Int = 0
        for flavor in self.flavors {
            if flavor.rating > 4 {
                topFlavors.append(flavor.name)
                totalTopFlavors += 1
            }
        }
        
        //finishing the last flavor with "and". For example,", , and ", instead of just ", , "
        var index: Int = 0
        for f in topFlavors {
            message += f + ", "
            if index == topFlavors.count - 2 {
                message += "and "
            }
            
            index += 1
        }
        
        //account for edge cases, such as if there are no flavors with a rating above 4.0
        if totalTopFlavors > 0 {
            print("\(message)")
        } else {
            print("There are no top flavors!")
        }
        
    }
    
    /*
     Customers will need a way to order a cone.

     Create a function called orderCone.
     This should have arguments needed to initialize a Cone, such as a flavor, topping (if desired), and a size.
     This function should return an optional Cone object. We're going to have it be optional for later use.
     In this function, create a constant that initializes a new Cone with the arguments passed into the function.
     Add the price of the cone to the totalSales variable you made in the previous step.
     Create a string that tells the price of the cone, along with its flavor and topping. NOTE: account for the potential lack of a topping on the Cone in that string by using optional binding (if-let). For example, the string could say "Your mint ice cream with chocolate chips is 3.99", or "Your vanilla ice cream is 5.99." Print the string.
     Finally, return the cone you initialized.
     */
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        //In the orderCone function, check to make sure the flavor that the person requested exists on the menu.
        guard flavorIsOnMenu(flavor: flavor) else { return nil }
        
        let myCone = Cone(flavor: flavor, topping: topping, size: size)
        self.totalSales += myCone.size.rawValue
        
        if let myTopping = myCone.topping {
            print("Your \(myCone.flavor) ice cream with \(myTopping) is \(myCone.size.rawValue)")
        } else {
            print("Your \(myCone.flavor) ice cream is \(myCone.size.rawValue)")
        }
        return myCone
    }
    
    func flavorIsOnMenu(flavor: Flavor) -> Bool {
        for f in flavors {
            if f.name == flavor.name {
                return true
            }
        }
        return false
    }
}

//At the bottom of the playground, create a few Flavor constants, an array of sizes, and an array of toppings.
let flavorMint: Flavor = Flavor(name: "Mint", rating: 5)
let flavorChoc: Flavor = Flavor(name: "Chocolate", rating: 8)
let flavorVan: Flavor = Flavor(name: "Vanilla", rating: 6)
let sizes: [Size] = [.small, .medium, .large]
let toppings: [String] = ["Candy","Sprinkles","Peanuts"]


//Use the constants you just made to initialize a new IceCreamShop constant.
let myShop: IceCreamShop = IceCreamShop(flavors: [flavorVan,flavorChoc,flavorMint], toppings: toppings, sizes: sizes)


//Call the shop's listTopFlavors function and make sure it runs correctly.
myShop.listTopFlavors()


//Create a new Cone constant. Use the shop's orderCone function to assign the constant a Cone value.
let myCone: Cone? = myShop.orderCone(flavor: flavorChoc, topping: nil, size: .large)


//Using that new Cone constant, call its eat function without unwrapping the constant.
myCone?.eat()


//Print the shop's totalSales and make sure that it has increased since you ordered a cone in step 10.
print("Total Sales: $\(myShop.totalSales)")






