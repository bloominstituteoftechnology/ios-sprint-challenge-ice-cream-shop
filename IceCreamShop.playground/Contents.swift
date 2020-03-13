enum Name: String {
    case chocolate
    case vanilla
    case lavenderHoney                     //flavor names
    case strawberry
    case twist
}

struct Flavor{
    let name: Name                         //puts the rating and flavor name together
    let rating: Int
}

enum Size {
    case small(Double)
    case medium(Double)                     //sizes and raw value of prices
    case large(Double)
}
enum Topping {
    case hotFudge
    case caramel
    case sprinkles                             //Toppings
    case strawberrySauce
    case Nuts
}


struct Cone {
    let flavor: Flavor
    let topping: Topping                   //What goes into a cone?
    let size: Size
}

func eat() {
     print("I love \(Name.self)!")       // States an ice cream flavor the customer loves!
 }

class IceCreamShop {
    var strawberry = Flavor.self
    var vanilla = Flavor.self
    var lavenderHoney = Flavor.self
    var chocolate = Flavor.self
    var twist = Flavor.self
    
    
    var cone: Cone
    var totalSales = 0.00     //variable for our sales, will be set to increase later
//    var currencyFormatter: NumberFormatter = {
//        let formatter = NumberFormatter()               //currency formatter
//        formatter.numberStyle = .currency
//        return formatter
//    }()
    func listTopFlavors(){
        let flavors : [Flavor] = []
        for flavor in flavors{
            if rating.self >= 4{
                print("Our top flavors are \(Name)!")
                return Name
            }
        }
                
    }
    func orderCone(flavor: Flavor, cone:Cone){
        let iceCreamCone = Cone(flavor: Flavor, topping: topping, size: size)
    }
  init(cone = Cone)
}
