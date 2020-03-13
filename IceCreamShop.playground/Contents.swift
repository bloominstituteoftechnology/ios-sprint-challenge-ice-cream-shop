//1.

struct Flavor {
    var name : String
    var rating : Double
}


//2.

enum Size: Double {
    case Small = 3.0
    case Medium = 5.0
    case Large = 8.0
}

//3.

struct Cone {
    let flavor : Flavor
    let topping : String?
    let size : Size
    
    func eat(){
        print("Mmm! I love \(flavor.name)!")
    }
}

//4.

class IceCreamShop{
    var flavors : [Flavor]
    var sizes : [Size]
    var toppings : [String]
    var totalSales : Double
    
    init(flavors : [Flavor], sizes: [Size], toppings: [String] ){
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = 0.0
    }
    
}

let myIceCreamShop = IceCreamShop(flavors: [], sizes: [], toppings: [""])


//5.


func listTopFlavors () {
    
    print ("Our top flavors are : ")
    
    for flavor in  myIceCreamShop.flavors {
        if flavor.rating > 4.0 {
            print(flavor.name)
            
        }
    }
}

listTopFlavors()
