//flavor names
enum name: String {
    case chocolate
    case vanilla
    case lavenderHoney                  //flavor names
    case strawberry
    case twist
}

enum rating: String{
    case oneStar                            // rating based on 1-3 stars
    case twoStars
    case threeStars
}

struct Flavor{
    let name: Name                         //puts the rating and flavor name together
    let rating: Rating
}

enum size {
    case small(Double)
    case medium(Double)                     //sizes and raw value of prices
    case large(Double)
}
enum topping {
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
     print("I love \(name.self)!")       // States an ice cream flavor the customer loves!
 }

class IceCreamShop {
    var cone: Cone
    var totalSales = 0.00     //variable for our sales, will be set to increase later
    var currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()               //currency formatter
        formatter.numberStyle = .currency
        return formatter
    }()
    func listTopFlavors(){
        
    }
    func orderCone(flavor: Flavor, cone:Cone){
        let iceCreamCone = Cone(flavor: Flavor, topping: topping, size: size)
    }
    
}
