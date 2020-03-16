
struct Flavor{
    let name: String                        //puts the rating and flavor name together
    let rating: Double
}

enum Size: Double {
    case small = 2.50
    case medium = 2.75                   //sizes and raw value of prices
    case large = 3.00
}
struct Cone {
    let flavor: Flavor
    let topping: String?                  //What goes into a cone?
    let size: Size
    func eat() {
        print("I love \(self.flavor.name)!")       // States an ice cream flavor the customer loves!
    }
}

class IceCreamShop {
    var totalSales: Double
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    init(totalSales: Double, flavors: [Flavor], sizes: [Size], toppings: [String]) {
        self.totalSales = totalSales
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
    }
    func listTopFlavors() {
        var output = "Our top flavors are"
        for flavor in flavors {
            if flavor.rating >= 4 {
                output += " and \(flavor.name)"
            }
        }
        print(output)
                
    }
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales += size.rawValue
        if let unwrappedTopping = topping {
            print("Your \(flavor.name) with \(unwrappedTopping) is \(size.rawValue)!")
        }else{
            print("Your \(flavor.name) is \(size.rawValue)!")
        }
        return newCone
    }
    
 }
let vanilla = Flavor(name: "Vanilla", rating: 4)
let lavenderHoney = Flavor(name: "Lavender Honey", rating: 5)
let chocolate = Flavor(name: "Chocolate", rating: 3)
let toppings = ["Sprinkles","Hot Fudge"]
let sizes = [Size.small, Size.medium, Size.large]
let viIceCreamShop = IceCreamShop(totalSales: 0.0, flavors: [vanilla, lavenderHoney, chocolate], sizes: sizes, toppings: toppings)
viIceCreamShop.listTopFlavors()
var viCone = viIceCreamShop.orderCone(flavor: lavenderHoney, topping: "Sprinkles", size: .large)
viCone?.eat()
print(viIceCreamShop.totalSales)

