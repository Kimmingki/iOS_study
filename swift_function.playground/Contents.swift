import UIKit

func printName() {
    print("---> My name is Jason")
}

printName()


// param 1개
// 숫자를 받아서 10을 곱해서 출력한다.

func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 5)


// param 2개
// 물건 값과 갯수를 받아서 전체 금액을 출력하는 함수

//func printTotalPrice(price: Int, count: Int) {
//    print("Total Price: \(price * count)")
//}
//
//printTotalPrice(price: 1500, count: 5)


func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}

printTotalPrice(price: 1500, count: 5)
printTotalPrice(price: 1500, count: 10)
printTotalPrice(price: 1500, count: 7)
printTotalPrice(price: 1500, count: 1)

func printTotalPriceWithDefault(price: Int = 1500, count: Int) {
    print("Total Price: \(price * count)")
}

printTotalPriceWithDefault(count: 5)
printTotalPriceWithDefault(count: 10)
printTotalPriceWithDefault(count: 7)


func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let calculatedPrice = totalPrice(price: 10000, count: 77)
calculatedPrice
