import UIKit

struct Lecture {
    var title: String
    var maxStudent: Int = 10
    var numOfRegisterd: Int = 0
    
    func remainSeats() -> Int {
        let remainSeats = lec.maxStudent - lec.numOfRegisterd
        return remainSeats
    }
    
    mutating func register() {
        // 등록된 학생수 증가 시키기
        numOfRegisterd += 1
    }
    
    static let target: String = "Anybody want to learn something"
    
    static func 소속학원이름() -> String {
        return "fastCampus"
    }
}

var lec = Lecture(title: "iOS Basic")

//func remainSeats(of lec: Lecture) -> Int {
//    let remainSeats = lec.maxStudent - lec.numOfRegisterd
//    return remainSeats
//}


//remainSeats(of: lec)

lec.remainSeats()

lec.register()
lec.register()
lec.register()
lec.register()
lec.remainSeats()

Lecture.target
Lecture.소속학원이름()
