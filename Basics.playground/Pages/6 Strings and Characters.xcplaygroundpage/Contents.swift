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


//let threeDoubleQuotationMarks = """
//Escaping the first quotation mark \"""
//Escaping all three quotation marks \"\"\"
//"""

//Расширенные разделители строк #"Line 1\nLine 2"#

let threeMoreDoubleQuotationMarks = #"""
 \#0 (пустой символ),
 \\ (обратная косая черта),
 \#t (горизонтальная вкладка),
 \n (подача линии),
 \r (возврат каретки),
 \" (двойная кавычка) и
 \' (одна кавычка)
 \u{24} (1-8-значное шестнадцатеричное число Юникода)
"""#

//🌀Инициализация пустой строки
var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax

//Узнайте, пусто ли значение String, проверив его свойство Boolean isEmpty:
if emptyString.isEmpty {
    print("Nothing to see here")
}

//🌀Изменяемость строки
var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"

let constantString = "Highlander"
//constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified

//🌀String type is a value type
//Character values for a String

for character in "Dog!🐶" {
    print(character)
}

let exclamationMark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)

//Объединяющие строки и символы
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

//Вы можете добавить значение Character к переменной String с помощью метода append() типа String:
let exclamationMark1: Character = "!"
welcome.append(exclamationMark1)

let badStart = """
one
two

"""
let end = """
three
"""
print(badStart + end)

//🌀Интерполяция строк
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(#"Write an interpolated string in Swift using \(multiplier)."#)
print(#"6 times 7 is \#(6 * 7)."#)

//🌀Скалярные значения Unicode
let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"

let precomposed: Character = "\u{D55C}"                  // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"

let enclosedEAcute: Character = "\u{11AB}\u{20DD}"

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"

//🌀Подсчет символов
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

/*
 Например, если вы инициализируете новую строку с помощью четырехсимвольного слова cafe, а затем добавляете COMBINING ACUTE ACCENT (U+0301) в конец строки, результирующая строка по-прежнему будет иметь количество символов 4, с четвертым символом é, а не e:
 */
var word = "cafe"
word += "\u{301}"
print("the number of characters in \(word) is \(word.count)")

//Доступ к строке и ее изменение
/*
 Каждое строковое значение имеет связанный тип индекса String.Index, который соответствует положению каждого символа в строке.
 */

let greeting = "Guten Tag!"
greeting[greeting.startIndex] // G
greeting[greeting.index(before: greeting.endIndex)] // !
greeting[greeting.index(after: greeting.startIndex)] // u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index] // a

greeting[greeting.index(before: greeting.endIndex)]

for a in greeting.indices {
    print(a , " \(greeting[a])")
}

