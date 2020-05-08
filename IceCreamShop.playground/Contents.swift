// This is th beginning of the Sprint Challenge


enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}


class IceCreamShop {
    let coneSize: Size
    let iceCreamFlavors: String
    let iceCreamToppings: String
    let totalSales: Double

    init(coneSize: Size, iceCreamFlavors: String, iceCreamToppings: String, totalSales: Double) {
        self.coneSize = coneSize
        self.iceCreamFlavors = iceCreamFlavors
        self.iceCreamToppings = iceCreamToppings
        self.totalSales = totalSales
    }
}
