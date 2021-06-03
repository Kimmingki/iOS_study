### Structure

---

structure는 **관계가 있는 여러 데이터를 묶어서 표현** 할 수 있다.

structure와 class는 비슷하지만 차이점이 있다.

<img src="./img/structureAndClass.png" width=400>

또한 **Structure는 Stack에서 Class는 Heap 영역에서 생성**된다. 코드로써 차이점을 보자면

``` swift
class PersonClass {
  var name: String
  var age: Int
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
}

struct PersonStruct {
  var name: String
  var age: Int
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
}

let pClass1 = PersonClass(name: "Jason", age: 5)
let pClass2 = pClass1
pClass.name = "Hey"

pClass1.name	// "Hey"
pClass2.name	// "Hey"

var pStruct1 = PersonStruct(name: "Jason", age: 5)
var pStruct2 = pStruct1
pStruct2.name = "Hey"

pStruct1.name	// "Jason"
pStruct2.name	// "Hey"
```

이렇게 보면 이해하기 훨씬 쉬월 것이다.

<br>

구조체의 사용은

``` swift
let store1 = (x: 3, y: 5, name: "gs")
// 이렇게 튜플을 이용해 값을 저장을 할 때, 들어가는 값이 3개지만 struct를 이용하면 단순해진다

struct Location {
  let x: Int
  let y: Int
}

let store1 = (loc: Location(x: 3, y: 5), name: "gs")
// 이렇게 활용하여 사용할 수 있다. 글자 수가 더 늘어나 안좋은 것 같지만 큰 프로그램을 사용할 때는 효율적이다.
```

<br>

<br>

### Protocol

---

규약 - 지켜야 할 약속 ( 꼭 구현되어야 하는 method 혹은 프로퍼티 )

프로토콜은 특정 기능 수행에 필수적인 요소를 청의한 청사진(blueprint)이다. 프로토콜을 만족시키는 타입을

프로토콜을 따른다(conform)고 말한다. 프로토콜에 필수 구현을 추가하거나 추가적인 기능을 더하기 위해

프로토콜을 확장하는 것이 가능하다.

##### Protocol Syntax

프로토콜의 정의는 클래스, 구조체, 열거형 등과 유사하다.

``` swift
protocol SomeProtocol {
  // protocol definition goes here
}
```

프로토콜을 따라는 타입을 정의하기 위해서는 타입 이름 뒤에 콜론(:)을 붙이고 따를 프로토콜 이름을 적는다.

만약 따르는 프로토콜이 여러개라면 콤마(,)로 구분해준다.

``` swift
struct SomeStructure: FirstProtocol, AnotherProtocol {
  // structure definition goes here
}
```

서브클래싱인 경우 슈퍼클래스를 프로토콜 앞에 적어 준다.

``` swift
class someClass: SomeSuperClass, FirstProtocol, AnotherProtocol {
  // class difinition goes here
}
```

<br>

<br>

### Property

---

오브젝트에 데이터 같은 존재로 struct의 데이터를 프로퍼티라고 부른다.

프로퍼티에는 크게 두 종류가 있다.

* Stored Property

  저장 프로퍼티는 **단순히 값을 저장**하고 있는 프로퍼티이다. let 혹은 var 키워드를 통해 사용할 수 있다.

  ``` swift
  struct FixedLengthRange {
    var firstValue: Int
    let length: Int
  }
  var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
  // 범위 값은 0, 1, 2
  rangeOfThreeItems.firstValue = 6
  // 범위 값은 6, 7, 8
  ```

  

* Computed Property

  저장 프로퍼티 뿐 아니라 추가적으로 클래스, 구조체, 열거형은 계산된 프로퍼티를 선언할 수 있다.

  이 계산된 프로퍼티는 실제 값을 저장하고 있는 것이 아니라 `getter` 와 `optional한 setter` 를 제공해 값을 탐색하고

  간접적으로 다른 프로퍼티 값을 설정할 수 있는 방법을 제공한다.

  ``` swift
  struct Point {
    var x = 0.0, y = 0.0
  }
  struct Size {
    var width = 0.0, height = 0.0
  }
  struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
      get {
        let centerX = origin.x + (size.width / 2)
        let centerY = origin.y + (size.height / 2)
        return Point(x: centerX, y: centerY)
      }
      set(newCenter) {
        origin.x = newCenter.x - (size.width / 2)
        origin.y = newCenter.y - (size.height / 2)
      }
    }
  }
  var square = Rect(origin: Point(x: 0.0, y: 0.0),
                   size: Size(width: 10.0, height 10.0))
  let initialSquareCenter = square.center
  square.center = Point(x: 15.0, y: 15.0)
  print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
  ```

  위 코드는 좌표와 크기를 갖는 사각형을 표현하는 구조체에 관한 코드이다.

  여기서 `Rect` 구조체는 사각형의 중점을 표현하는 `center` 라는 계산된 프로퍼티를 제공한다.

