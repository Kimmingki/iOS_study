### Playground

---

Xcode에서 swift를 가지고 놀 수 있는 놀이터라고 볼 수 있다. 간단한 테스트 코드를 짤 때 이용하곤 한다.



<br>

#### Comment

---

복잡한 코드에 경우 **설명을 달아둬서** 다른 개발자들이 읽기 편하게 하거나 **정보를 남겨두는 용도**로 사용한다.

이렇게 comment를 사용하면 해당 라인은 컴파일러가 **무시**하게 된다.

``` swift
import UIKit

var str = "Hello, playground"

let value = arc4random_uniform(100)
print("---> \(value)")
```

라는 코드를 실행 시키면

<img src="./img/before_comment.png" width=200>

이렇게 출력이 되지만

``` swift
import UIKit

// var str = "Hello, playground"

let value = arc4random_uniform(100)
print("---> \(value)")
```

위 코드를 실행 시키면

<img src="./img/after_comment.png" width=200>

"Hello,playground"를 무시하고 실행하는 것을 볼 수 있다.

코드 블럭을 잡은 뒤 command + /  를 하면 해당 블럭을 comment 시킬 수 있다.
