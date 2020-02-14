





struct Flavor {
    var name: String
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
        print("Hmm! I love \(flavor.name)!")
    }
}

class IceCreamShop {
    //STEP 4
    var sizes: [Size]
    var flavors: [Flavor]
    var toppings: [String]
    var totalSales: Double
    
    init(totalSales: Double, sizes: [Size], toppings: [String], flavors: [Flavor]) {
        self.totalSales = totalSales
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
    }
    
    func listTopFlavors() {
        var topFlavors: String = ""
        var numberOfTopFlavors: Int = 0
        var numberOfTimesRun: Int = 0
        
        // CHECK TO SEE HOW MANY TOP FLAVORS THERE ARE
        for flavor in flavors {
            if flavor.rating > 4.0 {
                numberOfTopFlavors += 1
            }
        }
        
        for flavor in flavors {
            if flavor.rating > 4.0 {
                if numberOfTopFlavors > 2 {
                    numberOfTimesRun += 1
                    if topFlavors == "" { // IF THERE ARE MORE THAN TWO TOP FLAVORS
                        topFlavors += flavor.name
                    } else if numberOfTopFlavors == numberOfTimesRun {
                        topFlavors = topFlavors + ", and " + flavor.name
                    } else {
                        topFlavors = topFlavors + ", " + flavor.name
                    }
                } else { // IF THERE ARE ONLY TWO TOP FLAVORS, NO COMMAS NEEDED
                    if topFlavors == "" {
                        topFlavors += flavor.name
                    } else {
                        topFlavors = topFlavors + " and " + flavor.name
                    }
                }
            }
        }
        print("Our top flavors are \(topFlavors)")
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        let priceOfCone = size.rawValue
        
        if let unWrappedTopping = topping {
            print("Your \(flavor.name) ice cream with \(unWrappedTopping) is \(size.rawValue)")
        } else {
            print("Your \(flavor.name) ice cream is $\(size.rawValue)")
        }
        
        totalSales += priceOfCone
        
        return newCone
    }
}


let flavor1 = Flavor(name: "mint", rating: 4.5)
let flavor2 = Flavor(name: "vanilla", rating: 3.2)
let flavor3 = Flavor(name: "chocolate", rating: 4.1)
let flavor4 = Flavor(name: "birthday Cake", rating: 4.6)

let arrayOfSizes: [Size] = [.small, .medium, .large]
let arrayOfToppings: [String] = ["chocolate chips", "reese's peanut butter cups", "sour gummy worms"]


let iceCreamShop = IceCreamShop(totalSales: 0, sizes: arrayOfSizes, toppings: arrayOfToppings, flavors: [flavor1, flavor2, flavor3, flavor4])

iceCreamShop.listTopFlavors()

let newCone = iceCreamShop.orderCone(flavor: flavor1, topping: "chocolate chips", size: .large)
newCone?.eat()
print(iceCreamShop.totalSales)
