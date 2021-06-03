import UIKit


struct Person {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
        set {
            
            // newValue  "Jay Park"
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
    
    static let isAlien: Bool = false    // 타입 프로퍼티
}

var person = Person(firstName: "Jason", lastName: "Lee")

person.firstName
person.lastName


person.firstName = "Jim"
person.lastName = "Kim"

person.firstName
person.lastName


person.fullName
person.fullName = "Jay Park"
person.fullName


Person.isAlien
