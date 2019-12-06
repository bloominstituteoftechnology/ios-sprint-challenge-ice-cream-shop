//Create a struct called Flavor. Add the following properties. Think about what type they should be:
//name
//rating
struct Flavor {
    let name: String
    var rating: Int
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
    let flavor: String
    let size: Size
    //class methods
    func eat() {
        print("NOM NOM NOM. Yummy \(flavor)! OW MY HEAD HURTS!")
    }
}


//Create a class called IceCreamShop.
//An ice cream shop needs a menu, so create variables that hold the various flavors, sizes, and toppings you want to have in your shop.
//Create a variable called totalSales. This will be used to keep track of how much money was made.
//If a customer asks which flavors are available, we need to be ready to tell them. To accomplish this, do the following:

//Create a function called listTopFlavors.
//This function doesn't need any arguments.
//In the function, build a string that lists out the names of each flavor in the shop's flavors array whose rating is over 4.0. For example, the string might say "Our top flavors are ." Hint: You may want to loop through the array of flavors in order to access each one's name.
//When the string has been created, print it.

//Customers will need a way to order a cone.
//Create a function called orderCone.
//This should have arguments needed to initialize a Cone, such as a flavor, topping (if desired), and a size.
//This function should return an optional Cone object. We're going to have it be optional for later use.
//In this function, create a constant that initializes a new Cone with the arguments passed into the function.
//Add the price of the cone to the totalSales variable you made in the previous step.
//Create a string that tells the price of the cone, along with its flavor and topping. NOTE: account for the potential lack of a topping on the Cone in that string by using optional binding (if-let). For example, the string could say "Your mint ice cream with chocolate chips is 3.99", or "Your vanilla ice cream is 5.99." Print the string.
//Finally, return the cone you initialized.

//At the bottom of the playground, create a few Flavor constants, an array of sizes, and an array of toppings.

//Use the constants you just made to initialize a new IceCreamShop constant.

//Call the shop's listTopFlavors function and make sure it runs correctly.

//Create a new Cone constant. Use the shop's orderCone function to assign the constant a Cone value.

//Using that new Cone constant, call its eat function without unwrapping the constant.
