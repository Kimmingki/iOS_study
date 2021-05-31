import UIKit

// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기
func printFullName(firstName: String, lastName: String) {
    print("\(firstName) \(lastName)")
}

printFullName(firstName: "Kim", lastName: "Minki")

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기
func printFullName2(_ firstName: String, _ lastName: String) {
    print("\(firstName) \(lastName)")
}

printFullName2("Kim", "Minki")

// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기
func printFullName3(firstName: String, lastName: String) -> String {
    let fullName = "\(firstName) \(lastName)"
    return fullName
    // return "\(firstName) \(lastName)" 이렇게 해도 됨
}

let fullName = printFullName3(firstName: "Kim", lastName: "Minki")
