struct Flavor {
    
    let name: String
    let rating: Int

}

enum Size: Double {
    
    case small = 2.99
    case medium = 3.99
    case large = 4.50
}


struct Cone {
    
    let flavor: Flavor
    var topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(self.flavor)")
    }
    
}

class IceCreamShop {
    let flavors: [Flavor]
    let size: [Size]
    let topping: [String?]
    var totalSales: Double
    
    init(flavors: [Flavor], size: [Size], topping: [String?] ) {
        self.flavors = flavors
        self.size = size
        self.topping = topping
        self.totalSales = 0.0
    }
    
    func listTopFlavors() {
        for flavor in flavors{
            if flavor.rating >= 4 {
            print("Our top flavors are: \(flavor.name)")
            }
        }
    }
    
        func orderCone(flavor: Flavor, size: Size, topping: String?) -> Cone?  {
            
            let customerCone = Cone(flavor: flavor, topping: topping, size: size)
            
            totalSales += customerCone.size.rawValue
            print("Here is your \(customerCone.flavor) with \(customerCone.topping ?? "no toppings") the price comes to \(customerCone.size)")
               
            return customerCone
            
        }
    

}



