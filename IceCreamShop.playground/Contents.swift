struct Flavor {
    let name: String
    let rating: Double
}

struct Topping {
    let name: String
    let price: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: [Topping]?
    let size: Size
    
    func eat(){
        print("Mmm! I love \(flavor)!")
    }
}

class IceCreamShop {
    // Which sizes available won't change but setting the others to var as may want to add more flavors or toppings later
    let sizes: [Size]
    var flavors: [Flavor]
    var toppings: [Topping]
    var totalSales: Double
    
    init(sizes: [Size], flavors: [Flavor], toppings: [Topping], totalSales: Double) {
        self.sizes = sizes
        self.flavors = flavors
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors(){
        var topFlavors = "Our top flavors are: "

        for flavor in flavors {
            if flavor.rating > 4.0 {
                topFlavors += "\(flavor.name) "
            }
        }
        print(topFlavors)
    }
    
    func orderCone(size: Size, flavor: Flavor, toppings: [Topping]?) -> Cone?{
        let order = Cone(flavor: flavor, topping: toppings, size: size)
        var orderPrice = size.rawValue
        
        var orderString = "Your \(flavor) ice cream "
        
        // Adds any amount of toppings to ice cream and price
        if let toppings = toppings{
            orderString += "with "
            for n in 0...toppings.count-1{
                orderPrice += toppings[n].price
                if toppings.count > 1 || n == toppings.count-2 {
                    orderString += "\(toppings[n].name) and "
                } else if n == toppings.count-1{
                    orderString += "\(toppings[n].name) "
                } else {
                    orderString += "\(toppings[n].name), "
                }
            }
        }
        
        orderString += "is \(orderPrice)."
        totalSales += orderPrice
        print(orderString)
        return order
    }
}
