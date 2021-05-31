### Function

---

function은 전에 정리한 method와 **기능을 수행한다**는 점에서 거의 같다고 볼 수 있다. 어떠한 기능을 수행하는 코드 블럭이다.

다만 method와 다른 점은 **method는 오브젝트에 속해서** 기능을 수행하는 반면에 **function은 독립적**으로 호출이 가능하다.

> object.methodName() --> method
>
> functionName() --> function

``` swift
func 함수이름(인자) {
  // code...
} // 이런식으로 만들 수 있다.
```

함수는 **인자**를 받을 수 있다.

``` swift
// param 1개
// 숫자를 받아서 10을 곱해 출력한다.
func printMultipleOfTen(value: Int) {
  print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 5)
// 함수를 만들어 놓기만 하면 쓸모가 없다. 만들고 사용을 해야한다.
```

인자의 갯수를 많이 넣을 수도 있다.

``` swift
// param 2개
// 물건값과 갯수를 받아서 전체 금액을 출력하는 함수

func printTotalPrice(price: Int, count: Int) {
  print("Total Price: \(price * count)")
}

printTotalPrice(price: 1500, count: 5)
```

또한 `printTotalPrice(price: 1500, count: 5)` 이렇게 함수를 사용할 때 param의 이름을 입력하고 싶지 않을 때는

``` swift
func printTotalPrice(_ price: Int, _ count: Int) {
  print("Total Price: \(price * count)")
}
// ' _ ' 를 입력하면 된다.
printTotalPrice(1500, 5)
```

이때 ' _ ' 는 사용할 때의 param의 이름을 나타낸다고 보면 된다. 따라서

``` swift
func printTotalPrice(가격 price: Int, 갯수 count: Int) {
  print("Total Price: \(price * count)")
}

printTotalPrice(가격: 1500, 갯수: 5)
```

이런식으로 사용이 가능하다. (swift는 유니코드를 지원하기 때문에 한글이 가능함)

swift 함수에는 default를 설정할 수가 있다. 예를들어

``` swift
func printTotalPrice(price: Int, count: Int) {
  print("Total Price: \(price * count)")
}

printTotalPrice(price: 1500, count: 5)
printTotalPrice(price: 1500, count: 10)
printTotalPrice(price: 1500, count: 7)
printTotalPrice(price: 1500, count: 1)
// 이렇게 된다고 가정하였을 때 price는 1500원으로 일정한 것을 알 수 있다.

func printTotalPriceWithDefault(price: Int = 1500, count: Int) {
  print("Total Price: \(price * count)")
}

printTotalPriceWithDefault(count: 5)
// 이렇게 사용하면 price의 기본값이 1500원이 되어 count만 넣어도 가격 계산이 된다.
// 만약 가격이 다르다면 price 값을 변경하면 된다.
printTotalPriceWithDefault(price: 2000, count: 5)
```

위 내용은 인자를 받는 것에 대하여 알아봤는데 함수는 **반환값** 또한 넣을 수 있다.

``` swift
func totalPrice(price: Int, count: Int) -> Int {
  let totalPrice = price * count
  return totalPrice // return으로 값을 반환 할 수 있다.
} // -> Int는 반환값의 타입을 나타낸다.
```

위와 같이 함수에서 반환값을 내줬다면 변수에 값을 넣을 수 있다.

``` swift
func totalPrice(price: Int, count: Int) -> Int {
  let totalPrice = price * count
  return totalPrice
}

let calculatedPrice = totalPrice(price: 10000, count: 77)
calculatedPrice
// 이렇게 함수의 반환값을 변수에 넣을 수 있다.
```

