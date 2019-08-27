import UIKit

////////////////////////////////////////////////////////////
// 산술연산자
// +, -, *, /, %

var n1: Double ; var n2 : Double ; var result_cal : Double

n1 = 100 ; n2 = 200
result_cal = n1 + n2
print("\(n1) + \(n2) = \(result_cal)")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 관계연산자
// >, <, >=, <=, ==, !=

n1 = 100 ; n2 = 50 ; var result_relation: Bool

result_relation = n1 > n2
print("\(n1) > \(n2) = \(result_relation)")

result_relation = n1 != n2
print("\(n1) != \(n2) = \(result_relation)")
////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////
// 논리연산자
// &&(AND), ||(OR), !(NOT)

n1 = 100 ; n2 = 50
var result_logical: Bool

result_logical = n1 > 10 && n2 < 300
print("result_logical = \(result_logical)")

result_logical = n1 < 10 || n2 > 300
print("result_logical = \(result_logical)")
////////////////////////////////////////////////////////////
// 증가 / 감소 연산자 지원 안됨...
// (++, --) -> (+=, -=)

var result_increase_reduce : Int

result_increase_reduce = 10
print("result_increase_reduce = \(result_increase_reduce)")

result_increase_reduce += 1
print("result_increase_reduce = \(result_increase_reduce)")

result_increase_reduce -= 1
print("result_increase_reduce = \(result_increase_reduce)")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 대입 연산자
// =, +=, -=, *=, /=, %=, ...

var result_assignment : Int = 10

result_assignment += 10
print("result_assignment = \(result_assignment)")

result_assignment -= 10
print("result_assignment = \(result_assignment)")

result_assignment *= 10
print("result_assignment = \(result_assignment)")

result_assignment /= 10
print("result_assignment = \(result_assignment)")

result_assignment %= 10
print("result_assignment = \(result_assignment)")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 비트연산자
// &, |, ^, ~, <<, >>
var n3: Int = 10 ; var n4: Int = 5
var result_bit_operator : Int

// 16 8 4 2 1
//  0 1 0 1 0 -> 10
//  0 0 1 0 1 -> 10
result_bit_operator = n3 & n4
print("\(n3) & \(n4) = \(result_bit_operator)")

result_bit_operator = n3 | n4
print("\(n3) | \(n4) = \(result_bit_operator)")

result_bit_operator = n3 ^ n4
print("\(n3) ^ \(n4) = \(result_bit_operator)")

// 16 8 4 2 1
//  0 1 0 1 0 -> 10
//  1 0 1 0 1 -> ~10
//  0 0 1 0 1 -> 5
result_bit_operator = ~n3 & n4
print("~\(n3) & \(n4) = \(result_bit_operator)")

result_bit_operator = n3 << 1
print("\(n3) << 1 = \(result_bit_operator)")

result_bit_operator = n3 >> 1
print("\(n3) >> 1 = \(result_bit_operator)")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 삼항 연산자
// 조건식 ? 참일경우의 값 또는 식 : 거짓일경우의 값 또는 식

var gender = 2
var result = gender == 1 || gender == 3 ? "Man" : "Woman"

print("주민번호 7번째 자리수가 \(gender) 인 경우는 \(result)")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 범위 연산자
// 1 ... 5 -> 1 ~ 5 값을 반환
// 1 ..< 5 -> 1 ~ 4 값을 반환

print("1 ~ 5 까지 반복")
for i in 1 ... 5 {
    print("i = \(i)")
}

print("1 ~ 9 까지 반복")
for i in 1 ..< 10 {
    print("i = \(i)")
}

var array: Array<Int> = Array(1 ... 100)
for item in array {
    print("item = \(item)")
}

for item in array[1 ..< 100] {
    print("item = \(item)")
}
////////////////////////////////////////////////////////////
