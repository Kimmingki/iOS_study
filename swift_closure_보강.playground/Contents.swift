import UIKit

/*
{ ( param ) -> return type in
    statement...
}
*/


// Example 1: Cho Simple Closure

/*
let choSimpleClosure = {
    
}

choSimpleClosure()
*/


// Example 2: 코드블록을 구현한 Closure

/*
let choSimpleClosure = {
    print("Hello, Closure")
}

choSimpleClosure()
*/


// Example 3: 인풋 파라미터를 받는 Closure

/*
let choSimpleClosure: (String) -> Void = { name in
    print("Hello, Closure, my name is \(name)")
}

choSimpleClosure("Minki")
*/


// Example 4: 값을 리턴하는 Closure

/*
let choSimpleClosure: (String) -> String = { name in
    let message = "iOS 개발 만만세 \(name)"
    return message
}

let result = choSimpleClosure("Minki")
print(result)
*/


// Example 5: Closure를 파라미터로 받는 함수 구현

/*
func someSimpleFunction(choSimpleClosure: () -> Void) {
    print("함수에서 호출 되었다.")
}

someSimpleFunction(choSimpleClosure: {
    print("Bye COVID")
})
*/

/*
func someSimpleFunction(choSimpleClosure: () -> Void) {
    print("함수에서 호출 되었다.")
    choSimpleClosure()
}

someSimpleFunction(choSimpleClosure: {
    print("Bye COVID")
})
*/


// Example 6: Trailing Closure

func someSimpleFunction(message: String, choSimpleClosure: () -> Void) {
    print("함수에서 호출 되었다. msg is \(message)")
    choSimpleClosure()
}

someSimpleFunction(message: "로나로나 메로나", choSimpleClosure: {
    print("Bye COVID")
})

someSimpleFunction(message: "로나로나 메로나") {
    print("Bye COVID")
}
