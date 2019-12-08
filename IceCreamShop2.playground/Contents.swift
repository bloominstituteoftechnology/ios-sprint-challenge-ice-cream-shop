struct Flavor {
   var  name: String
   var rating: String
}

enum Size: Double  {
    case small = 1.99
    case medium = 2.99
    case large = 3.99
}


struct Cone {
    let  flavor: String
    let  topping: String
    let  coneSize: String
    
    func eat() {
        print("Mmm I love \(flavor)")
    }

}



class IceCreamShop {
    var flavors: Array = ["vanilla", "Straberry", "Chocolate", "ChocalteChip"]
    var  totalSales: Int
    
    init(flavor1: String, totalSales: Int) {
        self.flavors = []
        self.totalSales = totalSales
        
        }
    
    
    func listTopFlavors() {
    for iceCream in 0..<flavors.count{
        let flavor = flavors[iceCream]
        
        print("Our top flavors are \(flavor)")
    }    }
}

func orderCone {
    
}

