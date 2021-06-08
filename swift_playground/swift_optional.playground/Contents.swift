import UIKit

var carName: String? = "Tesla"
carName = nil
carName = "Tank"


// 아주 간단한 과제
// 1. 여러분이 최애하는 영화배우의 이름을 담는 변수를 작성해주세요 (타입 String?)
// 2. let num = Int("10") -> 타입은 무엇일까요?

var favoriteMovieStar: String? = nil
let num = Int("10")


// 고급 기능 4가지

// Forced unwrapping > 억지로 박스를 개봉
// Optional binding (if let) > 부드럽게 박스를 개봉 1
// Optional binding (guard) > 부드럽게 박스를 개봉 2
// Nil coalescing > 박스를 개봉했더니, 값이 없으면 디폴트 값을 할당


//print(carName!)

//if let unwrappedCarName = carName {
//    print(unwrappedCarName)
//} else {
//    print("Car Name 없음")
//}
//
//func printParsedInt(from: String) {
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//        // Cyclomatic Complexity
//    } else {
//        print("Int로 컨버팅 안됩니다.")
//    }
//}

//printParsedInt(from: "hello")

func printParsedInt(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅 안됩니다.")
        return
    }
    print(parsedInt)
}


let myCarName: String = carName ?? "model S"




// --- 도전 과제
// 1. 최애 음식이름을 담는 변수를 작성하시오 (String?)
let favoriteFood: String? = "김치"

// 2. 옵셔널 바인딩을 이용하여 값을 확인해보기
if let foodName = favoriteFood {
    print(foodName)
} else {
    print("좋아하는 음식이 없습니다.")
}

// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 (입력 파라미터는 String?)
func printNickName(name: String?) {
    guard let nickName = name else {
        print("이름이 없습니다.")
        return
    }
    print(nickName)
}

printNickName(name: nil)
