import UIKit


var multiplyClosure: (Int, Int) -> Int = { $0 * $1 }

let result = multiplyClosure(4, 2)


func operateTwoNum(a: Int, b: Int, opeartion: (Int, Int) -> Int) -> Int {
    let result = opeartion(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, opeartion: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}

operateTwoNum(a: 4, b: 2, opeartion: addClosure)


operateTwoNum(a: 4, b: 2) { a, b in
    return a / b
}


let voidClosure: () -> Void = {
    print("iOS 개발자")
}

voidClosure()



// Capturing Values

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

count
