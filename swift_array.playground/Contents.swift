import UIKit

var evenNumbers: [Int] = [2, 4, 6, 8]
//let evenNumbers: Array<Int> = [2, 4, 6, 8]

evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])


//let isEmpty = evenNumbers.isEmpty

evenNumbers.count

print(evenNumbers.first)

let firstItem = evenNumbers.first

if let firstElement = evenNumbers.first {
    print(firstElement)
} else {
    print("Nil")
}


evenNumbers.min()
evenNumbers.max()


evenNumbers[0]
evenNumbers[1]
evenNumbers[9]

//var twentithItem = evenNumbers[19]


// -------->


//let firstThree = evenNumbers[0...2]

evenNumbers.contains(3)
evenNumbers.contains(4)


evenNumbers.insert(0, at: 0)


//evenNumbers.removeAll()
evenNumbers.remove(at: 0)


evenNumbers[0...2] = [-2, 0, 2]
evenNumbers


evenNumbers.swapAt(0, 1)


//for num in evenNumbers {
//    print(num)
//}

for (index, num) in evenNumbers.enumerated() {
    print("index: \(index), value: \(num)")
}

let firstThreeRemoved = evenNumbers.dropFirst(3)
evenNumbers

let lastRemoved = evenNumbers.dropLast()
evenNumbers


let firstThree = evenNumbers.prefix(3)
firstThree

let lastThree = evenNumbers.suffix(3)
lastThree

evenNumbers
