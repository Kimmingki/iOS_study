### Class

---

Structure 그리고 Class는 **관계가 있는 것들을 묶어서 표현 한 것!**

<img src="./img/structure_and_class.png" width=500>

또한, **Data = Property, Method = Method** 로 볼 수 있다.

structure와 class는 개념적으로는 동일하나 **차이점이 하나 있다**고 전 시간에 정리했다.

<img src="./img/structureAndClass.png" width=400>

structure와 class의 차이를 더 쉽게 표현하기 위해 그림을 빌려보자면

#### Class

<img src="./img/class.png" width=350>

#### Structure

<img src="./img/structure.png" width=350>

이렇게 보면 이해하기 더 쉬울 것이다.

structure (Stack)와 class (Heap)는 **메모리에 할당되는 공간이 다르기 때문에** 다른 동작성을 나타낸다.

두 영역의 차이점을 간단하게 살펴보자면

#### Stack

* 매우 빠른 액세스
* 변수를 명시적으로 할당 해제 할 필요가 없다.
* 공간은 CPU에 의해 효율적으로 관리되고 메모리는 단편화되지 않는다.
* 지역 변수
* 스택 크기 제한 (OS에 따라 다르다)
* 변수의 크기를 조정 할 수 있다.

<br>

#### Heap

* 변수는 전역적으로 액세스 할 수 있다.

* 메모리 크기 제한 없다.

* (상대적으로) 느린 액세스

* 효율적인 공간 사용을 보장하지 못하면 메모리 블록이 할당 된 후 시간이 지남에 따라 메모리가 조각화 되어

  해제 될 수 있다.

* 메로리를 관리해야 한다. (변수를 할당하고 해제하는 책임이 있다.)



