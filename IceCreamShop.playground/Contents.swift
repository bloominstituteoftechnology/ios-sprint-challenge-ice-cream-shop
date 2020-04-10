
struct Flavor {
    let name: String
    let rating: Double
}
enum Size: Double {
    case small = 0.79
    case medium = 1.32
    case large = 1.79
}
struct Cone {
    let flavor: Flavor
    let size: Size
    let topping: String?
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
}
