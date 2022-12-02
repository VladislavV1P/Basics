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



