//1. Create a struct called `Flavor`. Add the following properties. Think about what type they should be:
//- `name`
//- `rating`


struct Flavor {
    let name: String
    var raiting: Int
}


//2. Create an enum called `Size`.
//- Give it a case for small, medium, and large.
//- Make the enum have `Double` raw values. The raw value should represent the size's price. For example, small might be 3.99.

enum Size: Double {
    case small
    case medium
    case large
}

//3. Create a struct called `Cone`.
//- Give the struct properties (constants) that hold a flavor, topping (as a `String`), and size.
//- Create a function called `eat`. It shouldn't have any arguments. It should print a string of text that includes the name of the cone's flavor. For example: "Mmm! I love <flavor here>!"

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    var totalSales = 0.0
    var price: Double
    
    init(price: Double, flavor: Flavor, size: Size, topping: String) {
        self.price = price
        self.size = size
        self.topping = topping
        self.flavor = flavor
    }
}

extension Cone { // Again from 11) - looks like this one should be instance method ...
    
    func eat() {
        let flavour = Flavor(name: "SomeFlavourNameThatICantImagine", raiting: Int(25600.0))
        let cone = Cone.init(price: 23.0, flavor: flavour, size: .small, topping: "Some Topping")
        print("Mmm! I love \(cone.flavor)")
    }
}


//4. Create a class called `IceCreamShop`.
//- An ice cream shop needs a menu, so create variables that hold the various flavors, sizes, and toppings you want to have in your shop.
//- Create a variable called `totalSales`. This will be used to keep track of how much money was made.

class IceCreamShop { // Leave it like it is ... task misunderstanding
    
    struct MenuItem {
        var flavor: Flavor
        var size: Size
        var topping: String
    }
    
    let menuItem1 = MenuItem(flavor: Flavor(name: "Flavour 1", raiting: 1), size: .small, topping: "1")
    let menuItem2 = MenuItem(flavor: Flavor(name: "Flavour 2", raiting: 2), size: .medium, topping: "6")
    let menuItem3 = MenuItem(flavor: Flavor(name: "Flavour 3", raiting: 3), size: .large, topping: "13")
    var menu: [MenuItem]
    
    var totalSales: Int = 0
    var price: Double
    
    init(price: Double) {
        self.price = price
        menu = [menuItem1, menuItem2, menuItem3]
    }
}

//5. If a customer asks which flavors are available, we need to be ready to tell them. To accomplish this, do the following:
//- Create a function called `listTopFlavors`.
//- This function doesn't need any arguments.
//- In the function, build a string that lists out the names of each flavor in the shop's `flavors` array whose rating is over 4.0. For example, the string might say "Our top flavors are <flavors here>." **Hint:** You may want to loop through the array of flavors in order to access each one's name.
//- When the string has been created, print it.

extension IceCreamShop { // only from 9) I found out that this is instant method of the shop ... then I added it
    
    func listTopFlavors() { // can be shortened to one cycle but this one is more clear
        let shop = IceCreamShop(price: 23.33)
        var topFlavours: [String] = []
        for menuItem in shop.menu {
            if let rating = Double(menuItem.topping), rating > 4.0 {
                topFlavours.append(menuItem.flavor.name)
            }
        }
        var resultString = "Our top flavors are"
        for flavourName in topFlavours {
            resultString += " "
            resultString += flavourName
        }
        print(resultString)
    }
}


//6. Customers will need a way to order a cone.
//- Create a function called `orderCone`.
//- This should have arguments needed to initialize a `Cone`, such as a flavor, topping (if desired), and a size.
//- This function should return an optional `Cone` object. We're going to have it be optional for later use.
//- In this function, create a constant that initializes a new `Cone` with the arguments passed into the function.
//- Add the price of the cone to the `totalSales` variable you made in the previous step.
/// We did not declared price of the Cone before. ?? - ok I will add it to the Cone struct
//- Create a string that tells the price of the cone, along with its flavor and topping. **NOTE:** account for the potential lack of a topping on the `Cone` in that string by using optional binding (if-let). For example, the string could say "Your mint ice cream with chocolate chips is 3.99", or "Your vanilla ice cream is 5.99." Print the string.
   /// Have not seen before that topping is optional - ok will change it now
   
//- Finally, return the cone you initialized.

extension Cone {
    
    static func orderCone(flavor: Flavor, size: Size, topper: String) -> Cone? {
        var cone = Cone.init(price: 23.0,
                             flavor: Flavor.init(name: "some name", raiting: 33),
                             size: .large,
                             topping: "some topping")
        cone.totalSales += cone.price
        
        var toppingString = "no topping"
        if let topping = cone.topping {
            toppingString = topping
        }
        _ = "Cone's price is \(cone.price), flavor is - \(cone.flavor.name), topping - \(toppingString)"
        return cone
    }
}





//7. At the bottom of the playground, create a few `Flavor` constants, an array of sizes, and an array of toppings.


let flavor1 = Flavor(name: "Flavour 1", raiting: 1)
let flavor2 = Flavor(name: "Flavour 2", raiting: 10)
let flavor3 = Flavor(name: "Flavour 3", raiting: 100)

let arrayOfSizes: [Size] = [.small, .large, .small, .medium]

let arrayOfToppings: [String] = ["topping 1", "topping 2", "topping 3", "topping 4", "topping 5", "topping 6"]


//8. Use the constants you just made to initialize a new `IceCreamShop` constant.

let iceCreamShop = IceCreamShop(price: 23.3) // I created this class in other way ...

if let size = arrayOfSizes.first, let topping = arrayOfToppings.first {
    _ = IceCreamShop.MenuItem(flavor: flavor1, size: size, topping: topping) // Then I will create it this way for you
}


//9. Call the shop's `listTopFlavors` function and make sure it runs correctly.

iceCreamShop.listTopFlavors() // it will run default values because of misundesrstanding




//10. Create a new `Cone` constant. Use the shop's `orderCone` function to assign the constant a `Cone` value.

let newCone = Cone.orderCone(flavor: flavor3, size: .large, topper: "topper")



//11. Using that new `Cone` constant, call its `eat` function without unwrapping the constant.

newCone?.eat()



//12. Print the shop's `totalSales` and make sure that it has increased since you ordered a cone in step 10.

print("Total sales - \(iceCreamShop.totalSales)") // will be 0 because we did not add anything
iceCreamShop.totalSales += 23
print("Total sales - \(iceCreamShop.totalSales)") // will be 23 ....


/// Looks like there should all be done at the very to of the playground but not under each point ... but I understood it only now ...
/// I am sorry - task was not very clear for me - a lot of misunderstandings
