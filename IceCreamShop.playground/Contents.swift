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

var myIceCreamShop = IceCreamShop(flavors: [], sizes: [], toppings: [""])


//5.


func listTopFlavors(){
    
    print ("Our top flavors are : ")
    
    for flavor in  myIceCreamShop.flavors {
        if flavor.rating > 4.0 {
            print(flavor.name)
            
        }
    }
}




//6.


func orderCone(flavor : Flavor, topping: String?, size: Size) -> Cone? {
    
    
    let myCone = Cone(flavor: flavor, topping: topping, size: size)
    
    myIceCreamShop.totalSales += myCone.size.rawValue
    
    if let unwrappedTopping = myCone.topping {
        
        print("Your \(myCone.flavor) with \(unwrappedTopping) is \(myCone.size)")
        
    } else {
         print("Your \(myCone.flavor)  is \(myCone.size)")
    } ;return myCone
   
}

//7.

let flavor1 = Flavor(name: "Chocolate", rating: 4.0)
let flavor2 = Flavor(name: "Blueberry", rating: 4.3)
let flavor3 = Flavor(name: "Lemon", rating: 3.8)

let sizes = [Size.Large, Size.Medium, Size.Small]

let toppings = ["Coconut", "Walnut", "Sesame"]


//8.
myIceCreamShop.flavors.append(flavor1)
myIceCreamShop.flavors.append(flavor2)
myIceCreamShop.flavors.append(flavor3)

myIceCreamShop.sizes = sizes
myIceCreamShop.toppings = toppings

//9.
listTopFlavors()

