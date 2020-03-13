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
