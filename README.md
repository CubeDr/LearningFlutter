# Flutter의 Layout

1. `Widget`은 UI를 위한 `class`이다.
2. `Widget`은 `layout`과 `UI element` 두가지 모두에 사용된다.
3. 단순한 `Widget`들을 조합하여 복잡한 `Widget`을 만들 수 있다.

* Container
  * `margin`, `pading`, `borders`, `background color` 등을 정의하기 위해 사용
  
* [Layout Widgets](https://flutter.io/docs/development/ui/widgets/layout)
  * 여러 자식 `Widget`들을 배치할 수 있는 `Widget`

* Expanded
  * 넓은 공간을 차지하도록 하는 `Widget`
  * `flex`는 차지하는 공간에 대한 `weight`를 나타내며, 기본 값은 `1`
  
* Axis Size
  * 메인 축의 방향으로의 위치 조절
  * 기본은 최대한 넓게 분산
  * `MainAxisSize.min` 적용 시 최대한 서로 가깝게 배치
  * `mainAxisSize: MainAxisSize.min`
  
 ## Layout Widgets
 
 ### Standard Widgets
 
 1. Container
   `padding`, `margins`, `borders`, `background color`, 등의 데코레이션 추가
   
 2. GridView
   스크롤 가능한 그리드로 `Widget` 배치
   
 3. ListView
   스크롤 가능한 리스트로 `Widget` 배치
   
 4. Stack
   `Widget`을 겹처서 배치
   
 ### Material Components
 
 1. Card
   연관된 정보를 한곳에 묶기 위해 사용
   
   둥근 모서리, 그림자 지원
   
 2. ListTile
   최대 3줄의 텍스트와 아이콘을 담을 수 있음