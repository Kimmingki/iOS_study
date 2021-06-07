import UIKit


struct Person {
    var firstName: String {
//        willSet {
//            // didset 이전에 wilset이 동작하는 것
//            print("willSet: \(firstName) --> \(newValue)")
//        }
        
        didSet {
            // stored property에서만 사용이 가능함
            // 내용이 바뀐 것을 확인 할 수 있음
            print("didset: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    lazy var isPoplular: Bool = {
        if fullName == "Jay Park" {
            return true
        } else {
            return false
        }
    }()
    
//    var fullName: String {
//        get {
//            return "\(firstName) \(lastName)"
//        }
//        set {
//            
//            // newValue  "Jay Park"
//            if let firstName = newValue.components(separatedBy: " ").first {
//                self.firstName = firstName
//            }
//            if let lastName = newValue.components(separatedBy: " ").last {
//                self.lastName = lastName
//            }
//        }
//    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
//    func fullName() -> String {
//        return "\(firstName) \(lastName)"
//    }
    
    static let isAlien: Bool = false    // 타입 프로퍼티
}

var person = Person(firstName: "Jason", lastName: "Lee")

//person.firstName
//person.lastName
//
//
//person.firstName = "Jim"
//person.lastName = "Kim"
//
//person.firstName
//person.lastName
//
//
//person.fullName
//person.fullName = "Jay Park"
//person.fullName
//
//
//Person.isAlien
//
//person.isPoplular


person.fullName
//person.fullName()
