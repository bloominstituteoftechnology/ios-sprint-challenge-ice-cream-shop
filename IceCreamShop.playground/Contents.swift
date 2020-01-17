
// 1. Create a struct called `Flavor`. Add the following properties. Think about what type they should be:
//- `name`
//- `rating`


struct Flavor {
    var name: String
    var rating: String
}


// 2.
//Create an enum called `Size`.
//- Give it a case for small, medium, and large.
//- Make the enum have `Double` raw values. The raw value should represent the size's price. For example, small might be 3.99.

enum Size: Double {
    case smallPrice
    case mediumPrice
    case largePrice
}

let smallPrice = Size.init(rawValue: 3.99)
let mediumPrice = Size.init(rawValue: 4.99)
let largePrice = Size.init(rawValue: 5.99)


// 3. Create a struct called `Cone`.
//- Give the struct properties (constants) that hold a flavor, topping (as a `String`), and size.
//- Create a function called `eat`. It shouldn't have any arguments. It should print a string of text that includes the name of the cone's flavor. For example: "Mmm! I love <flavor here>!"

struct Cone {
    let flavors: Flavor
    let toppings: String
    let size: Size
    
    func eat() {
        print("Wow, i Love \(Flavor.self)")
    
}


}
// 4. Create a class called `IceCreamShop`.
//- An ice cream shop needs a menu, so create variables that hold the various flavors, sizes, and toppings you want to have in your shop.
//- Create a variable called `totalSales`. This will be used to keep track of how much money was made.

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: String
    var totalSales: Int
    
    init(flavors: [Flavor], sizes: [Size], toppings: String, totalSales: Int)
    self.flavors = flavors
    self.sizes = sizes
    self.totalSales = totalSales
}

//5. If a customer asks which flavors are available, we need to be ready to tell them. To accomplis this, do the following:
//- Create a function called `listTopFlavors`.
//- This function doesn't need any arguments.
//- In the function, build a string that lists out the names of each flavor in the shop's `flavors` array whose rating is over 4.0. For example, the string might say "Our top flavors are <flavors here>." **Hint:** You may want to loop through the array of flavors in order to access each one's name.
//- When the string has been created, print it.

func listTopFlavors() {
    
}
