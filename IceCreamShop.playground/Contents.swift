//1. Create a struct called `Flavor`. Add the following properties: Name, Rating Think about what type they should be.

struct Flavor {
    let name: String
    let rating: Int
}

//2. Create an enum called `Size`.
// Give it a case for small, medium, and large.
// Make the enum have `Double` raw values. The raw value should represent the size's price. For example, small might be 3.99.

enum Size: Double {
    case small
    case medium
    case large
}

//3. Create a struct called `Cone`.
//  Give the struct properties (constants) that hold a flavor, topping (as a `String`), and size.
//  Create a function called `eat`. It shouldn't have any arguments. It should print a string of text that includes the name of the cone's flavor. For example: "Mmm! I love <flavor here>!"

struct Cone {
    let flavor: String
    let topping: String
    let size: Size
}

let myCone = Cone(flavor: "Chocolate",
                  topping: "hotFudge",
                  size: .large)                  //my order


func eat(Flavor: String) {
    
    print("Mmm! I love \(flavor)!")

}

//4. Create a class called `IceCreamShop`.
//  An ice cream shop needs a menu, so create variables that hold the various flavors, sizes, and toppings you want to have in your shop.
//  Create a variable called `totalSales`. This will be used to keep track of how much money was made.

class IceCreamShop {
    var small: String
    var medium: String
    var large: String
    var chocolate: String
    var vanilla: String
    var swirl: String
    var hotFudge: String
    var berries:String
    var totalSales: Double
    
    init(small: String, medium: String, large: String, chocolate: String, vanilla: String, swirl: String, hotFudge: String, berries: String) {
        self.small = small
        self.medium = medium
        self.large = large
        self.chocolate = chocolate
        self.vanilla = vanilla
        self.swirl = swirl
        self.hotFudge = hotFudge
        self.berries = berries
        
    }

}

var myIceCreamShop = IceCreamShop(small: "8 ounce", medium: "10 ounce", large: "12 ounce", chocolate: "Chocolate Fudge", vanilla: "Vanilla Bean", swirl: "Swirl", hotFudge: "Hot Fudge", berries: "Loaded Berries")

//5. If a customer asks which flavors are available, we need to be ready to tell them. To accomplish this, do the following:
//  Create a function called `listTopFlavors`.
//  This function doesn't need any arguments.
//  In the function, build a string that lists out the names of each flavor in the shop's `flavors` array whose rating is over 4.0. For example, the string might say "Our top flavors are <flavors here>." **Hint:** You may want to loop through the array of flavors in order to access each one's name.
//  When the string has been created, print it.






func listTopFlavors() {
    for flavor in Flavor {
        if flavor.rating >= 4
        print("Our top flavors are \(Flavor.name)!")
        
    }
    
}










//6. Customers will need a way to order a cone.
//  Create a function called `orderCone`.
//  This should have arguments needed to initialize a `Cone`, such as a flavor, topping (if desired), and a size.
//  This function should return an optional `Cone` object. We're going to have it be optional for later use.
//  In this function, create a constant that initializes a new `Cone` with the arguments passed into the function.
//  Add the price of the cone to the `totalSales` variable you made in the previous step.
//  Create a string that tells the price of the cone, along with its flavor and topping. **NOTE:** account for the potential lack of a topping on the `Cone` in that string by using optional binding (if-let). For example, the string could say "Your mint ice cream with chocolate chips is 3.99", or "Your vanilla ice cream is 5.99." Print the string.
//  Finally, return the cone you initialized.


var orderCone = Cone(flavor: "Chocolate", topping: "Berries", size: .medium)


//7. At the bottom of the playground, create a few `Flavor` constants, an array of sizes, and an array of toppings.


let flavor1 = (flavor: "Chocolate", rating: 4)
let flavor2 = (flavor: "Vanilla", rating: 3)

//8. Use the constants you just made to initialize a new `IceCreamShop` constant.





//9. Call the shop's `listTopFlavors` function and make sure it runs correctly.


listTopFlavors()



//10. Create a new `Cone` constant. Use the shop's `orderCone` function to assign the constant a `Cone` value.


var joeOrderCone = Cone(flavor: "Vanilla", topping: "Hot Fudge", size: .small)


//11. Using that new `Cone` constant, call its `eat` function without unwrapping the constant.





//12. Print the shop's `totalSales` and make sure that it has increased since you ordered a cone in the above step 10.

