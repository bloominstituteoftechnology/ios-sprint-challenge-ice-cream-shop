//Create a struct called Flavor. Add the following properties. Think about what type they should be:
//name
//rating
struct Flavor {
    let name: String
    var rating: Double
}
//Create an enum called Size.
//Give it a case for small, medium, and large.
//Make the enum have Double raw values. The raw value should represent the size's price. For example, small might be 3.99.
enum Size: Double {
    case small = 3.99
    case medium = 4.69
    case large = 4.99
}

//Create a struct called Cone.
//Give the struct properties (constants) that hold a flavor, topping (as a String), and size.
//Create a function called eat. It shouldn't have any arguments. It should print a string of text that includes the name of the cone's flavor. For example: "Mmm! I love !"
struct Cone {
    var flavor: String
    var size: Size
    //class methods
    func eat() {
        print("NOM NOM NOM. Yummy \(flavor)! OW MY HEAD HURTS!")
    }
}


//Create a class called IceCreamShop.
//An ice cream shop needs a menu, so create variables that hold the various flavors, sizes, and toppings you want to have in your shop.
//Create a variable called totalSales. This will be used to keep track of how much money was made.
class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size]) {
        self.flavors = flavors
        self.sizes = sizes
        self.totalSales = 0.0 //since no sales have been made on a shop that was just created...
    }
    
    //can this size be ordered?
    func sizeExistsOnMenu(_ size: Size) -> Bool {
        var exists = false
        for thisSize in sizes {
            if thisSize == size {
                exists = true
            }
        }
        return exists
    }
    
    //If a customer asks which flavors are available, we need to be ready to tell them. To accomplish this, do the following:
    //Create a function called listTopFlavors.
    //This function doesn't need any arguments.
    //In the function, build a string that lists out the names of each flavor in the shop's flavors array whose rating is over 4.0. For example, the string might say "Our top flavors are ." Hint: You may want to loop through the array of flavors in order to access each one's name.
    //When the string has been created, print it.
    
    //Mark: Stretch
    //Format the various strings to account for edge cases, such as if there are no flavors with a rating above 4.0, finishing the last flavor with "and". For example,", , and ", instead of just ", , "
    func listTopFlavors() {
        var favoriteFlavorArray = [Flavor]()
        
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                favoriteFlavorArray.append(flavor)
            }
        }
        if !favoriteFlavorArray.isEmpty {
            print("Our Top Flavors are:")
            for i in 0..<favoriteFlavorArray.count - 1 {
                print("\(favoriteFlavorArray[i].name),")
            }
            print("and \(favoriteFlavorArray.last!.name)") //ok to force unwrap because we checked to see if the array was empty (all arrays have a first and last property)
        }
    }
    
    //Customers will need a way to order a cone.
    //Create a function called orderCone.
    //This should have arguments needed to initialize a Cone, such as a flavor, topping (if desired), and a size.
    //This function should return an optional Cone object. We're going to have it be optional for later use.
    //In this function, create a constant that initializes a new Cone with the arguments passed into the function.
    //Add the price of the cone to the totalSales variable you made in the previous step.
    //Create a string that tells the price of the cone, along with its flavor and topping. NOTE: account for the potential lack of a topping on the Cone in that string by using optional binding (if-let). For example, the string could say "Your mint ice cream with chocolate chips is 3.99", or "Your vanilla ice cream is 5.99." Print the string.
    //Finally, return the cone you initialized.
    
    //Mark: Stretch
    //In the orderCone function, check to make sure the flavor that the person requested exists on the menu.
    
    //Mark: Super Stretch
    //check to see if the size exists in the shop's menu
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone {
        var cone = Cone(flavor: flavor.name, size: size)
        let sizeExists = sizeExistsOnMenu(size)
        let flavorExists = flavors.contains{flavor.name == $0.name}
        if sizeExists {
            if flavorExists {
                var printStatement = "Your \(cone.flavor) "
                if let topping = topping {
                    printStatement += "with \(topping) is \(cone.size.rawValue)"
                } else {
                    printStatement += "is \(cone.size.rawValue)"
                }
                print(printStatement)
                return cone
            }
            print("Sorry, we don't have \(flavor.name). Can we offer you a \(size) \(flavors[0].name) instead?")
            cone.flavor = flavors[0].name
        } else {
            print("Sorry, we don't offer a \(size) sized \(flavor.name). Can we offer you a \(sizes[0]) sized \(flavor.name) instead?")
            cone.size = sizes[0]
        }
        return cone
    }
    
}



//At the bottom of the playground, create a few Flavor constants, an array of sizes, and an array of toppings.
let chocChip = Flavor(name: "Chocolate Chip", rating: 4.0)
let doubleChocolate = Flavor(name: "Double Chocolate", rating: 4.8)
let cookieDough = Flavor(name: "Cookie Dough", rating: 5.0)
let vanilla = Flavor(name: "Vanilla", rating: 3.8)
let chocolate = Flavor(name: "Chocolate", rating: 3.9)
let notThisFlavor = Flavor(name: "Beanboozles", rating: 0.0)

let sizes: [Size] = [.small, .medium, .large]

//Use the constants you just made to initialize a new IceCreamShop constant.
let myShop = IceCreamShop(flavors: [chocChip,vanilla,chocolate,doubleChocolate,cookieDough], sizes: [.small, .large])

//Call the shop's listTopFlavors function and make sure it runs correctly.

myShop.listTopFlavors()

//Create a new Cone constant. Use the shop's orderCone function to assign the constant a Cone value.
let favoriteCone = Cone(flavor: doubleChocolate.name, size: .large)

//Using that new Cone constant, call its eat function without unwrapping the constant.
favoriteCone.eat()

//test Order Cone Stretch:
myShop.orderCone(flavor: doubleChocolate, topping: "chocolate chips", size: .large) // should work

myShop.orderCone(flavor: notThisFlavor, topping: nil, size: .small) //should offer a different flavor

myShop.orderCone(flavor: doubleChocolate, topping: nil, size: .medium) //should offer a different size

