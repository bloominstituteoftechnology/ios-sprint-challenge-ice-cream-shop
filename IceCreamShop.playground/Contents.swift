//:## Minimum Viable Product
//:
//:In your solution, it is essential that you follow best practices and produce clean and professional results. Schedule time to review, refine, and assess your work and perform basic professional polishing including spell-checking and grammar-checking on your code. It is better to submit a challenge that meets the minimum requirements than one that attempts too much and does not work in the end.
//:
//:Follow these steps to complete the Sprint Challenge. Recognize that not every step necessary to complete this challenge will be listed below. It can be useful to mentally break a step down by its individual sentences, or even smaller than that.
//:
//:1. Create a struct called `Flavor`. Add the following properties. Think about what type they should be:
//:    - `name`
//:    - `rating`
//:
import Foundation

struct Flavor {
    var name: String
    var rating: Double
}

//:2. Create an enum called `Size`.
//:    - Give it a case for small, medium, and large.
//:    - Make the enum have `Double` raw values. The raw value should represent the size's price. For example, small might be 3.99.
//:

enum Size: Double {
    case small  = 4.15
    case medium = 5.25
    case large  = 7.50
}

//:3. Create a struct called `Cone`.
//:    - Give the struct properties (constants) that hold a flavor, topping (as a `String`), and size.
//:    - Create a function called `eat`. It shouldn't have any arguments. It should print a string of text that includes the name of the cone's flavor. For example: "Mmm! I love <flavor here>!"
//:

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}

//:4. Create a class called `IceCreamShop`.
//:    - An ice cream shop needs a menu, so create variables that hold the various flavors, sizes, and toppings you want to have in your shop.
//:    - Create a variable called `totalSales`. This will be used to keep track of how much money was made.
//:

class IceCreamShop {
    var flavor: [Flavor]
    var topping: [String]

    var kidsScoop = Size.small
    var singleScoop = Size.medium
    var doubleScoop = Size.large

    var totalSales: Double
    
    func addTopping(_ item: String) {
        topping.append(item)
    }
    
    func addFlavor(_ item: Flavor) {
        flavor.append(item)
    }
    
    init() {
        self.flavor = []
        self.topping = []
        self.totalSales = 0.00
    }
}

//:5. If a customer asks which flavors are available, we need to be ready to tell them. To accomplish this, do the following:
//:    - Create a function called `listTopFlavors`.
//:    - This function doesn't need any arguments.
//:    - In the function, build a string that lists out the names of each flavor in the shop's `flavors` array whose rating is over 4.0. For example, the string might say "Our top flavors are <flavors here>." **Hint:** You may want to loop through the array of flavors in order to access each one's name.
//:    - When the string has been created, print it.
//:

extension IceCreamShop {
    func listTopFlavors() {
        
        let topFlavors = flavor.filter{ $0.rating > 4.0 }

        if topFlavors.count == 0 {
            print("They're all good!")
            return
        }
        
        var list = ""
        var count = topFlavors.count
        let total = count
        
        for item in topFlavors {
            //list += "\(item.name) = \(item.rating)\n"
            list += "\(item.name)"

            switch count {
            case 2: // Second to the end.
                if total == 2 {
                    list += " & "
                } else { // Don't forget the Oxford comma.
                    list += ", & "
                }
            case 1: // At the end.
                list += "."
            default: // Lots of ice cream
                list += ", "
            }
            count -= 1
        }

        let plural = total == 1 ? " is" : "s are"
        
        print("Our top flavor\(plural) \(list)")
    }
}

//:6. Customers will need a way to order a cone.
//:    - Create a function called `orderCone`.
//:    - This should have arguments needed to initialize a `Cone`, such as a flavor, topping (if desired), and a size.
//:    - This function should return an optional `Cone` object. We're going to have it be optional for later use.
//:    - In this function, create a constant that initializes a new `Cone` with the arguments passed into the function.
//:    - Add the price of the cone to the `totalSales` variable you made in the previous step.
//:    - Create a string that tells the price of the cone, along with its flavor and topping. **NOTE:** account for the potential lack of a topping on the `Cone` in that string by using optional binding (if-let). For example, the string could say "Your mint ice cream with chocolate chips is 3.99", or "Your vanilla ice cream is 5.99." Print the string.
//:    - Finally, return the cone you initialized.
//:

extension IceCreamShop {
    func printConeDetail(_ cone: Cone) {
        
        // Create our sales number
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let cost = formatter.string(from: cone.size.rawValue as NSNumber)

        let topping = (cone.topping != nil) ? "with \(cone.topping!) " : ""
            
        print("Your \(cone.flavor.name) \(topping)is \(cost!).")
    }
    
    func orderCone(flavor: Flavor, size: Size, topping: String? = nil) -> Cone? {
        let order = Cone(flavor: flavor, topping: topping, size: size)

        totalSales += size.rawValue
 
        printConeDetail(order)
        
        return order
    }
}

//:7. At the bottom of the playground, create a few `Flavor` constants, an array of sizes, and an array of toppings.
//:8. Use the constants you just made to initialize a new `IceCreamShop` constant.

var saltAndStaw = IceCreamShop()

let a01 = Flavor(name: "Sea Salt w/ Caramel Ribbons"                  , rating: 0.0)
let a02 = Flavor(name: "Salted, Malted, Chocolate Chip Cookie Dough"  , rating: 0.0)
let a03 = Flavor(name: "Double Fold Vanilla"                          , rating: 0.0)
let a04 = Flavor(name: "Honey Lavender"                               , rating: 0.0)
let a05 = Flavor(name: "Chocolate Gooey Brownie"                      , rating: 0.0)
let a06 = Flavor(name: "Strawberry Honey Balsamic w/ Black Pepper"    , rating: 0.0)
let a07 = Flavor(name: "Pots of Gold & Rainbows"                      , rating: 0.0)
let a08 = Flavor(name: "Sightglass Coffee Cashew Praline"             , rating: 0.0)
let a09 = Flavor(name: "Black Olive Brittle & Goat Cheese"            , rating: 0.0)
let a10 = Flavor(name: "Strawberry & Coconut Water Sherbet"           , rating: 0.0)
let a11 = Flavor(name: "Dandelion Chocolate Hazelnut Cookies & Cream" , rating: 0.0)
let a12 = Flavor(name: "Freckled Mint TCHO-colate Chip"               , rating: 0.0)
let a13 = Flavor(name: "Milla’s Chocolate Hazelnut Praline"           , rating: 5.0)
let a14 = Flavor(name: "Compartes Caramelized Popcorn Milk Chocolate" , rating: 5.0)
let a15 = Flavor(name: "Nibble’s 85% Peruvian Chocolate Sorbet"       , rating: 5.0)

saltAndStaw.addFlavor(a01)
saltAndStaw.addFlavor(a02)
saltAndStaw.addFlavor(a03)
saltAndStaw.addFlavor(a04)
saltAndStaw.addFlavor(a05)
saltAndStaw.addFlavor(a06)
saltAndStaw.addFlavor(a07)
saltAndStaw.addFlavor(a08)
saltAndStaw.addFlavor(a09)
saltAndStaw.addFlavor(a10)
saltAndStaw.addFlavor(a11)
saltAndStaw.addFlavor(a12)
// Gonna add a13 - a15 later to aid in testing.

saltAndStaw.addTopping("Hot fudge")
saltAndStaw.addTopping("Sprinkles")
saltAndStaw.addTopping("Caramel")
saltAndStaw.addTopping("Oreos")
saltAndStaw.addTopping("Peanut butter cups")
saltAndStaw.addTopping("Cookie dough")
saltAndStaw.addTopping("Whipped cream")
saltAndStaw.addTopping("Hard chocolate coating")
saltAndStaw.addTopping("Melted marshmallows")
saltAndStaw.addTopping("Cereal")
saltAndStaw.addTopping("Nuts")
saltAndStaw.addTopping("Fruit")

//:9. Call the shop's `listTopFlavors` function and make sure it runs correctly.

saltAndStaw.listTopFlavors()

saltAndStaw.addFlavor(a13)

saltAndStaw.listTopFlavors()

saltAndStaw.addFlavor(a14)

saltAndStaw.listTopFlavors()

saltAndStaw.addFlavor(a15)

saltAndStaw.listTopFlavors()

//:10. Create a new `Cone` constant. Use the shop's `orderCone` function to assign the constant a `Cone` value.

let eleanorOrder = saltAndStaw.orderCone(flavor: saltAndStaw.flavor[0],
                                         size: .large)
let markOrder = saltAndStaw.orderCone(flavor: saltAndStaw.flavor[1],
                                      size: .large,
                                      topping: "Cookie dough")

//:11. Using that new `Cone` constant, call its `eat` function without unwrapping the constant.

eleanorOrder?.eat()
markOrder?.eat()

//:12. Print the shop's `totalSales` and make sure that it has increased since you ordered a cone in step 10.
//:
//:Validate your work through running your playground and ensure that your code operates as designed.
//:

// Create our sales number
let formatter = NumberFormatter()
formatter.numberStyle = .currency
let sale = formatter.string(from: saltAndStaw.totalSales as NSNumber)

// Create a pretty timestamp
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "h:mm a"
let time = dateFormatter.string(from: Date())

print("Total sales of \(sale!) as of \(time)")

//:## Stretch Problems (Optional)
//:
//:After finishing your required elements, you can push your work further. These goals may or may not be things you have learned in this module but they build on the material you just studied. Time allowing, stretch your limits and see if you can deliver on the following **optional** goals:
//:
//:- Format the various strings to account for edge cases, such as if there are no flavors with a rating above 4.0, finishing the last flavor with "and". For example,"<flavor>, <flavor>, and <flavor>", instead of just "<flavor>, <flavor>, <flavor>"

// This is inline with code.

//:- In the `orderCone` function, check to make sure the flavor that the person requested exists on the menu.

extension IceCreamShop {
    func orderConeByName(flavorName: String, size: Size, topping: String? = nil) -> Cone? {
        var foundFlavor: Flavor?
        
        for item in flavor {
            if item.name == flavorName {
                foundFlavor = item
                break
            }
        }
        
        guard let orderFlavor = foundFlavor else {
            print("Sorry, we don't have a flavor called \(flavorName).")
            return nil
        }
        
        let order = Cone(flavor: orderFlavor, topping: topping, size: size)

        totalSales += size.rawValue
        
        printConeDetail(order)
        
        return order
    }
}

saltAndStaw.orderConeByName(flavorName: "Pralines and Cream", size: .medium)
saltAndStaw.orderConeByName(flavorName: "Strawberry & Coconut Water Sherbet", size: .medium)
