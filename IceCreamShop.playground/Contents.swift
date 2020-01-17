// 1. Create a struct called flavor. Add the follow

struct Flavor {
    
    let name: String
    let rating: Int
}

// 2. Create a enum called Size

enum Size: Double {
    
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

// 3. Create a struct called Cone. Create a function called eat. No arguments. It should print a string of text that include the name of the cone's flavor.

struct Cone {
    
    let flavor: String
    let topping: String
    let size: Size  // referring to enum
    
    func eat() {
        
        print("Mmm! I love \(self.flavor)")
    }

}


