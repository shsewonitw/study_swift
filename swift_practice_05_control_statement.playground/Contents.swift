import UIKit

////////////////////////////////////////////////////////////
// 분기문 if
/*
 if 조건식 {
    조건식이 참일 경우 실행할 실행문
 }
 */
// 주의사항
// 조건식이 참인 경우 실행될 실행문들은 중괄호 내부에 정의해야함
// (생략 안됨)

var gender = 2

// gender 변수의 값이 1,3인 경우 남성
// 2, 4인 경우 여성으로 출력하세요.
if gender == 1 || gender == 3 {
    print("당신은 남성입니다.")
}

if gender == 2 || gender == 4 {
    print("당신은 여성입니다.")
}

/*
 if 조건식 {
    조건식이 참일 경우 실행할 실행문
 } else {
    조건식이 거짓일 경우 실행할 실행문
 }
 */
if gender == 1 || gender == 3 {
    print("당신은 남성입니다.")
} else {
    print("당신은 여성입니다.")
}

/*
 if 조건식1 {
    조건식1이 참일 경우 실행할 실행문
 } else if 조건식2 {
    조건식2이 참일 경우 실행할 실행문
 } else if 조건식3 {
    조건식3이 참일 경우 실행할 실행문
 } else {
    모든 조건식이 거짓일 경우 실행할 실행문
 }
 */

gender = 7
if gender == 1 || gender == 3 {
    print("당신은 남성입니다.")
} else if gender == 2 || gender == 4 {
    print("당신은 여성입니다.")
} else {
    print("1 ~ 4 까지의 정수를 입력하세요.")
}
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 분기문 switch
/*
 switch 비교값 {
 case 값1:
    비교값이 값1일 경우 실행할 실행문
 case 값2:
    비교값이 값2일 경우 실행할 실행문
 case 값N:
    비교값이 값N일 경우 실행할 실행문
 default:
    모든 case에 해당되지 않을 경우 실행할 실행문
 }
 */
// 주의사항
// 1. break 키워드를 작성하지 않아도 해당 case문이 끝나면
// switch 블럭을 빠져나감
// 2. 반드시 default 구문을 작성해야함
// (default 생략시 컴파일 에러 발생)
// 3. switch 문에 대입되는 값은 정수와 문자열아 사용 가능

var menu_no = 2
switch menu_no {
case 1:
    print("1번 메뉴를 선택")
case 2:
    print("2번 메뉴를 선택")
case 3:
    print("3번 메뉴를 선택")
default:
    print("1 ~ 3 까지의 번호를 입력하세요.")
}

var menu_name = "돈까스"
switch menu_name {
case "짜장면":
    print("\(menu_name)은 5000원 입니다.")
case "돈까스":
    print("\(menu_name)은 7000원 입니다.")
case "라면":
    print("\(menu_name)은 4000원 입니다.")
default:
    print("\(menu_name)은 존재하지 않는 메뉴 입니다.")
}
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 반복문 for
/*
 for 변수명 in [컬렉션 / 범위연산자] {
    반복해서 수행할 실행문
 }
 */
// 주의사항
// 1. in 을 반드시 사용해야함

for index in 1...10 {
    print("index -> \(index)")
}

// 홀수만 출력
for index in 1...10 {
    if index % 2 == 1 {
        print("index -> \(index)")
    }
}

// 1에서 100까지의 정수 중, 3의 배수 또는 7의 배수의 합계를 출력
var merge_3_7 = 0
for index in 1 ... 100 {
    if index % 3 == 0 || index % 7 == 0 {
        merge_3_7 += index
    }
}

print("1 ~ 100 까지 정수 중, 3과 7의 배수 합계는 \(merge_3_7) 입니다.")

// 컬렉션 내부의 값을 순회하는 반복문 코드
var numbers: Array<Int> = Array(1 ... 100)
print(numbers)
for item in numbers {
    print(item)
}
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 반복문 while
/*
 while 조건식 {
    반복해서 수행할 실행문
 }
 */

var sum_while = 0
var i: Int = 1
while true {
    sum_while += i
    
    if sum_while >= 10000 {
        break
    }
    
    i += 1
}
print("합계의 값이 10000이 넘어가는 순간의 i값은 \(i), 합계는 \(sum_while)")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 반복문 repeat ~ while
// 한번의 실행은 보장하는 반복문의 형태
/*
 repeat {
    반복해서 수행할 실행문
 } while 조건식
 */

sum_while = 0
i = 1
repeat {
    sum_while += i
    i += 1
} while sum_while < 10000
print("합계의 값이 10000이 넘어가는 순간의 i값은 \(i-1), 합계는 \(sum_while)")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////

// 구구단 출력!!!
for dan in 2 ... 9 {
    print("\(dan)단을 출력")
    for mul in 1 ... 9 {
        print("\(dan) * \(mul) = \(dan * mul)")
    }
    print()
}

////////////////////////////////////////////////////////////
