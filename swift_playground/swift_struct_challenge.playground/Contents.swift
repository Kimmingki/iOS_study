import UIKit


// 도전 과제


// CustomStringConvertible
// 1. 강의 이름, 강사 이름, 학생수를 가지는 Struct 만들기 (Lecture)
struct Lecture: CustomStringConvertible {
    var description: String {
        return "Title: \(name), Instructor: \(instructor)"
    }
    let name: String
    let instructor: String
    let numOfStudent: Int
}


// 2. 강의 array와 강사 이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
func printLectureName(from instructor: String, lectures: [Lecture]) {
    var lectureName = ""

    for lecture in lectures {
        if instructor == lecture.instructor {
            lectureName = lecture.name
        }
    }
//    let lectureName = lectures.first { (lec) -> Bool in
//        return lec.instructor == instructor
//    }?.name ?? ""
    print("그 강사님 강의는요: \(lectureName)")
}


// 3. 강의 3개 만들고 강사 이름으로 강의 찾기

let lec1 = Lecture(name: "iOS Basic", instructor: "Jason", numOfStudent: 5)
let lec2 = Lecture(name: "iOS Advanced", instructor: "Jack", numOfStudent: 5)
let lec3 = Lecture(name: "iOS Pro", instructor: "Jim", numOfStudent: 5)
let lectures = [lec1, lec2, lec3]


printLectureName(from: "Jim", lectures: lectures)


print(lec1)
