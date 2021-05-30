### Flow Control

---

Flow Control이란 코드 동작의 **흐름을 제어**할 때 사용한다.

이 전 내용에 잠시 들어갔던 if-else 구문도 Flow Control에 속한다.

``` swift
if (어떤 조건) {
  // 조건을 만족하는 경우, 수행할 코드
} else {
  // 조건을 만족하지 않는 경우, 수행할 코드
}
```

<br>

### While

---

``` swift
while 조건 {
  // code....
}
```

while문은 **조건을 만족하는 동안** 안에 있는 code를 계속 수행하게 된다.

``` swift
var i = 0

while i < 10 {
  print(i)
  i += 1
}
```

이런 식으로 코드를 작성을 하면 i가 10 이상이 된다면 조건을 만족하지 않아 while문을 빠져 나오게 된다.

이외에도 도중에 빠져나올 수 있는 방법이 있다.

``` swift
var i = 0

while i < 10 {
  print(i)
  if i == 5 {
    break
  }
  i += 1
}
```

이런 식으로 중간에 **break**를 걸어주면 반복문 중간에서 빠져 나올 수 있다.

또한 다른 while문도 있는데 repeat-while문이다. 똑같지만 방식이 좀 다르다.

``` swift
var i = 0

repeat {
  print(i)
  i += 1
} while i < 10
```

기존 while문과 다른 점은 조건을 보기 전에 코드를 먼저 실행한다는 것이다.

``` swift
var i = 0

while i < 10 {
  print(i)
  i += 1
}

i = 0

repeat {
  print(i)
  i += 1
} while < 10

/*
while
조건 > 코드수행 > 조건 > 코드수행

repeat while
코드수행 > 조건 > 코드수행 > 조건
*/
```

위 코드를 실행 시키면 다른 점이 보이지 않지만 i 값을 10으로 바꾼다면 무엇이 다른지 확인할 수 있을 것이다.

<br>

### For Loop

---

while문이나 for문 같은 반복문을 사용할 경우에 자주 쓰는 **range**라는 개념이 있다.

``` swift
let closedRange = 0...10	// 0부터 10까지
let halfClosedRange = 0..<10	// 0부터 9까지
```

이것을 이용해 for loop를 사용해보자면

``` swift
let closedRange = 0...10

var sum = 0

for i in closedRange {
  print("---> \(i)")
  sum += i
}

print("---> total sum: \(sum)")

// 10까지 카운트 되고 sum은 55가 출력 되는 것을 알 수 있다.
```

``` swift
let halfClosedRange = 0..<10

var sum = 0

for i in halfClosedRagne {
  print("---> \(i)")
  sum += i
}

print("---> total sum: \(sum)")

// 9까지 카운트 되고 sum은 45가 출력 되는 것을 알 수 있다.
```

또한 변수가 쓰이지 않는 경우 ' _ ' 을 이용할 수 있다.

``` swift
let name = "Jason"

for i in 0...10 {
  print("---> name: \(name)")
}
```

위 경우 i라는 변수를 만들고 사용하지 않았기 때문에

``` swift
let name = "Jason"

for _ in 0...10 {
  print("---> name: \(name)")
}
```

이렇게 고쳐 쓸 수 있다.

for loop에 또 다른 기능이 존재하는데 **where**이다 조건문을 겹칠 수가 있다.

``` swift
for i in closedRange {
  if i % 2 == 0 {
    print("---> even: \(i)")
  }
} // 이 코드와

for i in closedRange where i % 2 == 0 {
  print("---> even: \(i)")
} // 이 코드는 같다
```

위 코드처럼 for문 안에 조건문이 있는 경우 where을 사용하여 좀 더 간결하게 코드를 만들 수 있다.

for loop 에는 **continue**라는 명령이 있는데 건너 뛰는 용도로 사용한다.

``` swift
for i in closedRange {
  if i == 3 {
    continue
  }
  print("---> \(i)")
}
// continue를 만난 경우 continue 이후의 코드들을 건너뛰고 반복문이 동작한다.
```

for loop 같은 경우에 **중첩**해서 사용할 수 있다.

``` swift
for i in 2..<10 {
  for j in 1..<10 {
    print("gugu -> \(i) * \(j) = \(i * j)")
  }
}
// 이렇게 간단하게 구구단도 만들어 볼 수 있다.
```

계속해서 중첩을 사용할 수는 있지만 중첩될 수록 **가독성, 성능면에서 좋지 않아 적당히 사용**해야 한다.

<br>

### Switch

---

확인하려는 변수를 switch문 옆에 두고 블록 안에서 **가능한 케이스를 체크**하고 **부합하는 케이스에 코드를 수행**하는 구문이다.

``` swift
let num = 10

switch num {
  case 0:
  	print("---> 0 입니다.")
  case 0..<10:
  	print("---> 0 ~ 9 사이 입니다.")	// switch 또한 range를 사용할 수 있다.
  case 10:
  	print("---> 10 입니다.")
  default:
  	print("---> 나머지 입니다.")
}
```

default 같은 경우에는 num 이라는 int형 변수에 관해서 **모든 case를 적어줄 수 없으니**, 특정 케이스를 제외한 **나머지 값들에 대한**

**코드를 작성**해주는 것이다.

그리고 숫자 뿐만 아니라 case에 문자열 또한 넣어줄 수 있다.

``` swift
let pet = "bird"

switch pet {
case "dog", "cat", "bird":
    print("---> 집 동물입니다.")
default:
    print("---> 잘 모르겠습니다.")
}
```

그리고 case에 **조건** 또한 넣을 수 있다.

``` swift
let num = 20

switch num {
  case _ where num % 2 == 0:
  	print("---> even")
  default:
  	print("---> odd")
}
```

 또 지난 번에 정리한 **tuple**도 case에 적용 시킬 수 있다.

``` swift
let coordinate = (x: 0, y: 10)

switch coordinate {
  case (0, 0):
  	print("---> 원점")
  case (_, 0):
  	print("---> X축")
  /*
  case (let x, 0):
  	print("---> X축, x: \(x)")
  이런식으로 값을 받을 수도 있다.
  */
  case (0, _):
  	print("---> Y축")
  /*
  case (0, let y):
  	print("---> Y축, y: \(y)")
  */
  default:
  	print("---> 좌표 어딘가")
}
```

