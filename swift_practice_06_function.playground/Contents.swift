import UIKit

////////////////////////////////////////////////////////////
// 함수 (메소드) 정의 및 사용
// 기본적인 함수 정의 방법
// (매개변수가 없고 리턴되는 값이 없는 경우)
/*
 func 함수명 () {
 
 }
 */

func function_1() {
    print("function_1 실행")
}

// 함수(메소드) 실행 방법
// 함수명()
function_1()
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 함수 (메소드) 정의 및 사용
// 기본적인 함수 정의 방법
// (매개변수가 있고 리턴되는 값이 없는 경우)
/*
 func 함수명 ( [_/별칭] 매개변수명: 매개변수타입 [, ...] ) {
 
 }
 */

func function_2( num: Int ) {
    print("function_2 실행")
    print("num = \(num)")
}

// 함수(메소드) 실행 방법
// 함수명(매개변수명: 매개변수값)
function_2(num: 11)

func function_3( num1: Int, num2: Int ) {
    print("function_3 실행")
    print("num1 = \(num1), num2 = \(num2)")
}

// 함수(메소드) 실행 방법
// 함수명(매개변수명: 매개변수값)
function_3(num1: 11, num2: 22)
// 매개변수의 전달 순서를 지켜야함.
// function_3(num2: 11, num1: 22)
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 함수 (메소드) 정의 및 사용
// 매개변수의 기본 값 설정
func function_4( num1: Int = 100, num2: Int = 200 ) {
    print("function_4 실행")
    print("num1 = \(num1), num2 = \(num2)")
}
// 매개변수의 기본값이 있는 경우 매개변수의 생략이 가능함
function_4()

// 매개변수의 일부분만 전달하여 실행할 수 있음
function_4(num1: 5)
function_4(num2: 5)

// 매개변수들에 정의된 기본 값을 사용하지 않고 새로운 값을 전달
function_4(num1: 10, num2: 20)
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 함수 (메소드) 정의 및 사용
// 매개변수의 별칭 설정
// 1. 실제 사용하는 매개변수의 이름을 간소화
// 2. 함수를 호출할 때, 매개변수의 의미를 알려주기위한 용도

func function_5( first_number num1: Int, second_number num2: Int ) {
    print("function_5 실행")
    // 메소드 내부에서는 별칭을 사용할 수 없음
    // 별칭은 메소드 호출에만 사용됨
    //print("first_number = \(first_number), second_number = \(second_number)")
    print("num1 = \(num1), num2 = \(num2)")
}

// 별칭이 지정된 함수의 호출 시, 원래의 매개변수 이름대신 별칭을 사용하여
// 매개변수를 전달함
function_5(first_number: 150, second_number: 250)

// 함수 호출 시, 매개변수의 이름을 생략하기 위한 방법
// 함수의 각 매개변수 선언 이전에 _ 를 정의하면
// 매개변수의 이름을 사용하지 않고 값을 전달할 수 있음
// 주의사항!!
// 1. _ 를 사용하는 경우 매개변수의 별칭은 사용할 수 없음
// 2. 매개변수명과 공백을 반드시 입력해야함
func function_6( _ n1: Int, _ n2: Int, n3: Int ) {
    print("function_6 실행")
    print("n1 = \(n1), n2 = \(n2), n3 = \(n3)")
}
// 매개변수의 이름을 사용하지 않고 함수를 호출
// n1과 n2는 매개변수명을 생략할 수 있지만, n3은 포함해야함
function_6(10, 20, n3: 30)

// 반복문에서 매개변수가 생략되는 예제
// for 문의 기준변수 자리에 _를 사용하는 경우
// 해당 변수는 사용하지 않는다는 의미로서 사용됨
for _ in 1 ... 10 {
    print("반복 수행")
}
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 함수 리턴값의 정의 및 사용
/*
 func 함수명 () -> (리턴값변수명: 리턴값의타입 [, ... ]) {
    return 리턴값
 }
 */

// 함수의 리턴값이 1개인 경우
// 1. 리턴값의 타입 선언에 이름을 사용하지 않음
// 2. 리턴값의 타입 선언에 소괄호를 생략할 수 있음
func function_7() -> String {
    return "function_7 함수 실행"
}

// 리턴값이 존재하는 함수는 실행 결과를 변수로 대입할 수 있음
var function_7_return = function_7()
print("function_7_return -> \(function_7_return)")

// 함수의 리턴값이 다수개인 경우
// 리턴값의 타입 선언에 소괄호를 반드시 선언해야함
func function_8() -> (return_int: Int, resturn_str: String) {
    print("function_8 함수 실행")
    return (8, "function_8의 실행 결과")
}

// 리턴값이 다수개인 함수는 리턴 데이터가 키/밸류 형태로 반환됨
var function_8_return = function_8()
print("function_8_return -> \(function_8_return)")

// 리턴값의 일부만 별도로 접근할 수 있음(키 값을 사용)
print("function_8_return.return_int -> \(function_8_return.return_int)")
print("function_8_return.resturn_str -> \(function_8_return.resturn_str)")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 함수(메소드) 오버로딩
// 1. 함수(메소드)의 이름이 동일하고,
// 2. 함수(메소드)의 매개변수 이름이 동일하지 않음
// 3. 함수(메소드)의 매개변수 개수가 동일하지 않음

func function_9() {
    print("function_9()")
}
func function_9(n1: Int) {
    print("function_9(n1: Int)")
}
func function_9(n2: Int) {
    print("function_9(n2: Int)")
}
func function_9(n1: String) {
    print("function_9(n1: String)")
}
func function_9(n1: String, n2:Int) {
    print("function_9(n1: String, n2:Int)")
}

function_9()
function_9(n1: 10)
function_9(n1: "Hello")
function_9(n2: 20)
function_9(n1: "Swift", n2: 11)
////////////////////////////////////////////////////////////
