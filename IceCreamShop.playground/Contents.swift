struct Flavor {
    var name : String
    var rating : String
}

enum Size : Double {
    case small
    case medium
    case large
}

struct Cone {
    var flavor : Flavor
    var topping : String
    var size : Size
    
    func eat() {
        print("Mmm! I love!")
    }
}

class iceCreamShop {
    var menu : Cone
    var totalSales : Double
    init(flavor : Flavor, topping: String,size:Size, totalSales : Double) {
        self.totalSales = totalSales
        self.menu = Cone(flavor: Flavor, topping: String, size: Size)
       
    }
    func listTopFlavors() {
        
    }
}
