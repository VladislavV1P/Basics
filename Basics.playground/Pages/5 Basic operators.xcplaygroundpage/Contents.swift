//: [Previous](@previous)

import Foundation
/*
Операторы являются унарными, двоичными или тройными:

Unary operators operate on a single target (such as -a). Unary prefix operators appear immediately before their target (such as !b), and unary postfix operators appear immediately after their target (such as c!).

Binary operators operate on two targets (such as 2 + 3) and are infix because they appear in between their two targets.

Ternary operators operate on three targets. Like C, Swift has only one ternary operator, the ternary conditional operator (a ? b : c).
*/

//Остаток Оператора
/*Оператор остатка (a % b) выясняет, сколько кратных b поместится внутри a, и возвращает оставшееся значение (известное как остаток).
*/

9 % 4  // 1    9 = (4 x 2) + 1
15 % 4 // 3
-9 % 4 // -1  -9 = (4 x -2) + -1

//Оператор Unary Minus
/*
Знак числового значения можно переключить с помощью префикса -, известного как унарный оператор минус:
*/
let three = 3
let minusThree = -three // -3
let plusMinusThree = -minusThree // 3

//Операторы компаундного назначения +=

var a = 1
a += 1 // = a + 1

//Операторы сравнения
/*
qual to (a == b)

Not equal to (a != b)

Greater than (a > b)

Less than (a < b)

Greater than or equal to (a >= b)

Less than or equal to (a <= b)
*/
/*
Swift также предоставляет два оператора идентификации (=== и ! ==), который вы используете для проверки того, ссылаются ли две ссылки на объекты на один и тот же экземпляр объекта. Для получения дополнительной информации см. Операторы удостоверений.
*/

1 == 1   // true because 1 is equal to 1
2 != 1   // true because 2 isn't equal to 1
2 > 1    // true because 2 is greater than 1
1 < 2    // true because 1 is less than 2
1 >= 1   // true because 1 is greater than or equal to 1
2 <= 1   // false because 2 isn't less than or equal to 1

(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

//🌀Тернарный условный оператор
//question ? answer1 : answer2

var question = true
var answer1 = "OK"
var answer2 = "NO"

if question {
    answer1
} else {
    answer2
}

question ? answer1 : answer2

//🌀Оператор Nil-Coalescing (a ?? b)
//a != nil ? a! : b
// заменяется на var c = a ?? b

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName

//🌀Оператор диапазона
//Оператор замкнутого диапазона (a...b)
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

//Оператор Half-Open Range (a..<b)
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

//Односайдовые диапазоны [2...] от индекса 2 до конца массива
for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

for name in names[..<2] {
    print(name)
}

let range = ...5
range.contains(7) // false
range.contains(-4)// true

//🌀Логические операторы
/*
Logical NOT (!a)

Logical AND (a && b)

Logical OR (a || b)
*/
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"

//Объединение логических операторов

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"

// ДЗ

let s: Double = 5
let d: Double = 6
s/d

//Оператор переполнения &+ &- &* &/ &%
let ass = UInt8.max
ass &+ 4

var sum = 5
sum += 1


// 1 посчитать сколько секунд прошло с вашего дня рождения
// 2 посчитать в каком квартале родился
// 3 шахматная доска , нужно определить какое поле черное или белое

let year = 365
let secondsInDay = 24 * 60 * 60

var numberOfSeconds = ((year - 18) + year * 35 + (year - 48)) * secondsInDay
print("секунд прожито = \(numberOfSeconds)")


let myDay = 18
let quarterOfBirth1 = 91
let quarterOfBirth2 = 182
let quarterOfBirth3 = 273
let quarterOfBirth4 = 365

if myDay <= quarterOfBirth1 {
    print("I was born in the 1st quarter")
} else if myDay <= quarterOfBirth2 {
    print("I was born in the 2nd quarter")
} else if myDay <= quarterOfBirth3 {
    print("I was born in the 3rd quarter")
} else {
    print("I was born in the 4th quarter")
}

var yourPosition: (horizontal: Int, vertical: Int)


