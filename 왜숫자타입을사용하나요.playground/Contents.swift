import Foundation

// MARK: 명확한 의미를 표현하기 위함
var age: Int = -1 // 나이는 음수가 될 수 없음

// MARK: 명확한 범위를 표현하기 위함
var maxNumber: Int8 = .max // 8비트 정수의 최대값: 127

// 최대값을 초과하는 수를 표현할 경우
// Overflow라고 함. 일정 범위의 순환이 필요한 경우 사용하기도 함
//var overflow = maxNumber + 1 // 0 or Error

// 최소값을 초과하는 수를 표현할 경우
// Underflow라고 함
var minNumber: Int8 = .min // 8비트 정수의 최소값: -128
//var underflow = minNumber - 1 // .max or Error

// MARK: 주의사항
// 변수의 역할에 알맞은 자료형을 선택할 것
// overflow를 고려해서 자료형을 선택할 것

let num1 = 10 // Int from 10진수
let num2 = 0b10 // Int from 2진수
let num3 = 0x10 // Int from 16진수

//let float: Float = 10F
//let int: Int = 10f // Error

let signed: Int8 = -1
print(String(UInt8(bitPattern: signed), radix: 2))

var pi: Float = 3.14
//++pi

var int: Int = 3

var op1: Int = 12; // 0000 ... 0000 1100
var leftShiftResult1: Int = op1 >> 2 // 3 (0000 ... 0000 0011)
var leftShiftResult2: Int = op1 >> 3; // 1 (0000 ... 0000 0001)
var leftShiftResult3: Int = op1 >> 4; // 0 (0000 ... 0000 0000)

var byte: Int8 = 0
var mask: Int8 = 1 << 2
byte |= mask

var mask2: Int8 = 1 << 3 | 1 << 5
byte |= mask2

var mask3: Int8 = ~(1 << 2)
byte &= mask3

print(String(byte, radix: 2))

var message1 = "Hello"
var message2 = "Hello"
message1 == message2
print("\u{61}")
