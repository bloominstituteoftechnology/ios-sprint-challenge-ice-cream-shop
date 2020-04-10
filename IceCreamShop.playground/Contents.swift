
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
    let topping: String
    let size: Size
    
    func eat(){
        print("MMM! I love \(flavor)")
    }
}





