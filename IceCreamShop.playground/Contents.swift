//1. Create a struct called `Flavor`. Add the following properties. Think about what type they should be:
//    - `name`
//    - `rating`

struct Flavor {
    
    var name: String
    var rating: String

}

//2. Create an enum called `Size`.
//    - Give it a case for small, medium, and large.
//    - Make the enum have `Double` raw values. The raw value should represent the size's price. For example, small might be 3.99.

enum Size: Double {
    case small = 2.99
    case medium = 3.49
    case large = 4.39
}
//3. Create a struct called `Cone`.
//    - Give the struct properties (constants) that hold a flavor, topping (as a `String`), and size.
//    - Create a function called `eat`. It shouldn't have any arguments. It should print a string of text that includes the name of the cone's flavor. For example: "Mmm! I love <flavor here>!"

struct Cone {
    let flavor: String?
    var topping: String
    let size: Size
    
}

let myCone = Cone(flavor: "chocolate", topping: "sprinkles", size: .small)
print(myCone)


func eat() {
    print("Mmm! I love \(String(describing: myCone.flavor))")
    
}

print(eat())


//4. Create a class called `IceCreamShop`.
//    - An ice cream shop needs a menu, so create variables that hold the various flavors, sizes, and toppings you want to have in your shop.
//    - Create a variable called `totalSales`. This will be used to keep track of how much money was made.

class IceCreamShop {
    
    var flavors: String
    var sizes: [Size]
    var toppings: String
    
    var totalSales: UInt
    
    init(flavors: String,sizes: [Size],toppings: String, totalSales: UInt){
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
}


//5. If a customer asks which flavors are available, we need to be ready to tell them. To accomplis this, do the following:
//    - Create a function called `listTopFlavors`.
//    - This function doesn't need any arguments.
//    - In the function, build a string that lists out the names of each flavor in the shop's `flavors` array whose rating is over 4.0. For example, the string might say "Our top flavors are <flavors here>." **Hint:** You may want to loop through the array of flavors in order to access each one's name.
//    - When the string has been created, print it.

let flavor1 = "chocolate"
let flavor2 = "vanilla"
let flavor3 = "strawberry"

let flavors = [flavor1, flavor2, flavor3]

func listTopFlavors() {
    
    for _ in flavors {
        print("Our top flavors are \(flavor1), \(flavor2) and \(flavor3)!")
    }
 return
}
print(listTopFlavors())

//6. Customers will need a way to order a cone.
//    - Create a function called `orderCone`.
//    - This should have arguments needed to initialize a `Cone`, such as a flavor, topping (if desired), and a size.
//    - This function should return an optional `Cone` object. We're going to have it be optional for later use.
//    - In this function, create a constant that initializes a new `Cone` with the arguments passed into the function.
//    - Add the price of the cone to the `totalSales` variable you made in the previous step.
//    - Create a string that tells the price of the cone, along with its flavor and topping. **NOTE:** account for the potential lack of a topping on the `Cone` in that string by using optional binding (if-let). For example, the string could say "Your mint ice cream with chocolate chips is 3.99", or "Your vanilla ice cream is 5.99." Print the string.
//    - Finally, return the cone you initialized.

//let toppings = ["sprinkles", "gummy worms", "hot fudge"]

var size: Size = .small


func orderCone(_ dollars: Double) -> String? {
    
    switch Size(rawValue: Double) {
    case .small:
        return
    case .medium:
        return
    case .large:
        return
        
    }
}







//7. At the bottom of the playground, create a few `Flavor` constants, an array of sizes, and an array of toppings.



//8. Use the constants you just made to initialize a new `IceCreamShop` constant.


//9. Call the shop's `listTopFlavors` function and make sure it runs correctly.



//10. Create a new `Cone` constant. Use the shop's `orderCone` function to assign the constant a `Cone` value.


//11. Using that new `Cone` constant, call its `eat` function without unwrapping the constant.


//12. Print the shop's `totalSales` and make sure that it has increased since you ordered a cone in step 10.



//Validate your work through running your playground and ensure that your code operates as designed.
