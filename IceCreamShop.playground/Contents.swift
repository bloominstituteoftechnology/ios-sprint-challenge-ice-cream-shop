
struct Flavor{
    var name: String
    var rating: Int
}


enum Size: Double{
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone{
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    init(flavor:Flavor,topping:String,size:Size) {
        self.flavor = flavor
        self.topping = topping
        self.size = size
    }
    func eat(){
        print("MMM! I love \(flavor)")
    }
}
let flavor = Flavor(name: "Pistach", rating: 7)
let cone = Cone(flavor: flavor, topping: "Choco", size: .large)

class IceCreamShop{
    var flavor: [Flavor]
    var size: Size
    var toppings: String
    var totalSales: Double
    
    init(flavor:[Flavor],size:Size,toppings:String,totalSales:Double) {
        self.flavor = flavor
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors(){
        var listFlavor: [Flavor]
        for flavor in listFlavor{
            if flavor.rating >= 4{
                listFlavor = listFlavor + flavor.name
                
            }
        }print(listFlavor)
    }
}








