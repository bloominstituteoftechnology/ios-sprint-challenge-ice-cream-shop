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
    

}

let cones = Cone(flavor: "vanilla", topping: "Sprinkles", coneSize: "medium")

func eat() {
    print("MMMMM I love \(cones.flavor)")
}



class IceCreamShop {
    var flavors: Array = ["vanilla", "Straberry", "Chocolate", "ChocalteChip"]
    var  totalSales: Int
    
    init(flavors1: String, totalSales: Int) {
        self.flavors = [flavors1]
        self.totalSales = totalSales
        
        func listTopFlavors() {
        for iceCream in 0..<flavors.count{
            let flavor = flavors[iceCream]
            
            print("Our top flavors are \(flavor)")
        }    }

        }
}






func orderCone() {
    
}


