//: [Previous](@previous)

import Foundation

//Strings and Characters
//Строковые литералы ""
let someString = "Some string literal value"

//Многострочные строковые литералы """ ... """
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

//разрывы строк (\) в конце строк
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

//Специальные символы в строковых литералах
/*
 Экранированные специальные символы
 \0 (пустой символ),
 \\ (обратная косая черта),
 \t (горизонтальная вкладка),
 \n (подача линии),
 \r (возврат каретки),
 \" (двойная кавычка) и
 \' (одна кавычка)
 */

let string = """
 \0 (пустой символ),
 \\ (обратная косая черта),
 \t (горизонтальная вкладка),
 \n (подача линии),
 \r (возврат каретки),
 \" (двойная кавычка) и
 \' (одна кавычка)
 \u{24} (1-8-значное шестнадцатеричное число Юникода)
"""

let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496


let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""
