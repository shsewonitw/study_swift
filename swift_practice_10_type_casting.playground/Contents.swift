import UIKit

////////////////////////////////////////////////////////////
// 형변환
// [값/변수] as[!] 변경할타입
// as 연산자는 특정 값 또는 변수의 타입을 변경하는 연산자입니다.
// as! 를 사용하는 경우는 옵셔널 변수의 타입을 강제로 변경할 때 사용합니다.
// as! 를 사용하기 전에 반드시 nil 값 여부를 확인한 후 사용해야 합니다.
// 일반적으로 is 연산자를 사용하여 타입을 체크한 후, 올바른 형변환인 경우
// as 를 사용하여 형변환을 실행합니다.

// 기존의 언어에서 사용하는 방식은 swift에서 허용되지 않습니다.
// var double_value = (Double)10

var double_value = 10 as Double
print("10.type -> \(type(of: 10))")
print("double_value.type -> \(type(of: double_value))")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 타입체크
// [값/변수] is 확인할타입
// is 연산자는 타입을 확인한 후, true/false 값을 반환합니다.
// 일반적으로 상속 관계를 구현하고 있는 클래스의 타입을 확인하기 위해서 활용
// (부모클래스의 타입으로 저장된 자식클래스의 객체를 확인하는 용도)

var int_value = 111
var float_value = 21.2
var char_value = "A"

print("int_value is Int \(int_value is Int)")
print("float_value is Int \(float_value is Int)")
print("char_value is Int \(char_value is Int)")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 클래스 객체 사이의 형변환
// 상속관계를 구현하고 있는 클래스 사이에서의 형변환을 위해서
// is, as 연산자를 사용할 수 있습니다.

// 부모클래스인 Animal 클래스를 정의하세요
// 색상 정보를 나타내는 color 필드를 추가(생성자를 통해서 초기화)
class Animal {
    var color: String?
    
    init(color: String?) {
        self.color = color
    }
    
    func getColor() -> String? {
        return self.color
    }
}
// 자식 클래스인 Dog, Cat 클래스를 정의하세요
// Dog 클래스는 나이를 나타내는 age 필드를 추가
// Cat 클래스는 몸무게를 나타내는 weight 필드를 추가
class Dog : Animal {
    var age: Int
    
    init(color: String?, age: Int) {
        self.age = age
        super.init(color: color)
    }
}
class Cat : Animal {
    var weight: Double
    
    init(color: String?, weight: Double) {
        self.weight = weight
        super.init(color: color)
    }
}
// 상속관계를 구현하고 있는 경우
// 부모 클래스의 레퍼런스 변수를 사용하여
// 자식 클래스의 객체를 참조할 수 있음
var dog: Animal = Dog(color: "검은색", age: 5)
var cat: Animal = Cat(color: "하얀색", weight: 5.5)

// 부모 클래스의 레퍼런스 변수는 부모 클래스의 멤버에만
// 접근할 수 있기 때문에 아래의 코드는 에러가 발생
//print("dog.color -> \(dog.getColor()!), dog.age -> \(dog.age)")
//print("cat -> \(cat.getColor()!), cat.weight -> \(cat.weight)")

var d: Dog = dog as! Dog
var c: Cat = cat as! Cat

// as! 형변환은 강제 형변환이므로 실제 실행 시
// 타입이 일치하지 않으면 런타임 에러가 발생함
// 아래의 코드는 컴파일에는 문제가 없지만 런타임 에러가 발생되는 코드
// c = dog as! Cat

// as! 형변환은 반드시 is 연산자와 조합되어 사용해야
// 런타임 에러를 피할 수 있음
if dog is Cat {
    c = dog as! Cat
} else {
    print("dog as! Cat 은 허용되지 않음!!")
}
////////////////////////////////////////////////////////////
