extension IceCreamShop {
    struct Menu {
        var flavors: [Cone.Flavor]
        var toppings: [String]
        var sizes: [Cone.Size]
        
    }
}
class IceCreamShop {
    func listTopFlavors() {
        //each flavor in the shop's flavors array whose rating is over 4.0
        //what if there are no flavors rated above 4.0?
        //grammatical commas + "and" before last flavor
        print()
    }
    func orderCone(flavor: Cone.Flavor, toppings: [String], size: Cone.Size) -> Cone? {
        //confirm availability
        //calculatePrice
        //collectSales
        nil
    }
    var totalSales = 0.0
}
extension Cone {
    struct Flavor {
        let name: String
        let rating: Double
    }
    enum Size: Double {
        case small
        case medium
        case large
    }
}
struct Cone {
    let flavor: Flavor
    let size: Size
    let toppings: [String]
    func eat() {
        //print(text that includes the name of the cone's flavor. For example: "Mmm! I love \(flavor)!")
    }
}

//let ics = IceCreamShop(:)
//ics.listTopFlavors
//let cone = ics.orderCone(:)
//cone.eat()    //without unwrapping
//print(ics.totalSales)  //increased
