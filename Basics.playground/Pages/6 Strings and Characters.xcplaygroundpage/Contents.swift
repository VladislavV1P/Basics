//: [Previous](@previous)

import Foundation

//Strings and Characters
//Строковые литералы ""
let someString: String = "Some string literal value"

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

//🌀Доступ к строке и ее изменение
/*
 Каждое строковое значение имеет связанный тип индекса String.Index, который соответствует положению каждого символа в строке.
 */

let greeting = "Guten Tag!"
greeting[greeting.startIndex] // G
greeting[greeting.index(before: greeting.endIndex)] // !
greeting[greeting.index(after: greeting.startIndex)] // u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
// limitedBy полезен для того, чтобы смещение не вышло за пределы индекса. Это ограничивающий индекс. Поскольку смещение может превышать предел, этот метод возвращает необязательный. Он возвращает ноль, если индекс выходит за рамки.
let index2 = greeting.index(greeting.startIndex, offsetBy: 7, limitedBy: greeting.endIndex) ?? greeting.startIndex

greeting[index2] // a

greeting[greeting.index(before: greeting.endIndex)]

//Используйте свойство indices для доступа ко всем индексам отдельных символов в строке.
for a in greeting.indices {
    print(a , " \(greeting[a])")
}

//🌀Вставка и удаление
/*
 Чтобы вставить один символ в строку с указанным индексом, используйте метод insert(_:at:), а чтобы вставить содержимое другой строки в указанный индекс, используйте метод insert(contentsOf:at:).
 */
var welcome1 = "Hello"
welcome1.insert("!", at: welcome1.endIndex)
welcome1.insert(contentsOf: " there", at: welcome1.index(before: welcome1.endIndex))

/*
 Чтобы удалить один символ из строки с указанным индексом, используйте метод remove(at:), а чтобы удалить подстроку в указанном диапазоне, используйте метод removeSubrange(_:):
 */
welcome1.remove(at: welcome1.index(before: welcome1.endIndex))
welcome1

let range = welcome1.index(welcome1.endIndex, offsetBy: -6)..<welcome1.endIndex
welcome1.removeSubrange(range)

welcome1.prefix(5)
welcome1.suffix(6)

//🌀Подстроки
/*
 В приведенном выше примере приветствие - это строка, что означает, что она имеет область памяти, где хранятся символы, составлящие строку. Поскольку начало является подстрокой приветствия, оно повторно использует память, используемую приветствием. Напротив, newString - это строка - когда она создается из подстроки, у нее есть собственное хранилище. На рисунке ниже показаны следующие отношения:
 */
let greeting1 = "Hello, world!"
let index1 = greeting1.firstIndex(of: ",") ?? greeting1.endIndex
let beginning = greeting1[..<index1]
let newString = String(beginning)

//🌀Сравнение строк
//Swift предоставляет три способа сравнения текстовых значений: равенство строк и символов, равенство префиксов и равенство суффиксов
/*
 Равенство строк и символов проверяется оператором "равно" (==) и оператором "не равно" (! =)
 */
let quotation1 = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation1 == sameQuotation {
    print("These two strings are considered equal")
}
/*
 Два строковых значения (или два значения символов) считаются равными, если их расширенные кластеры графем канонически эквивалентны. Расширенные кластеры графем канонически эквивалентны, если они имеют одинаковое лингвистическое значение и внешний вид, даже если они состоят из разных скаляров Юникода за кулисами.
 */

let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
/*
 И наоборот, ЛАТИНСКАЯ ЗАГЛАВНАЯ БУКВА A (U+0041 или "A"), используемая в английском языке, не эквивалентна КИРИЛЛИЧЕСКОЙ ЗАГЛАВНОЙ БУКВЕ A (U+0410 или "А"), используемой в русском языке. Персонажи визуально похожи, но не имеют одинакового лингвистического значения:
 */

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters aren't equivalent.")
}

//Равенство префиксов и суффиксов
/*
 Чтобы проверить, имеет ли строка определенный строковый префикс или суффикс, вызовите методы string hasPrefix(_:) и hasSuffix(_:), оба из которых принимают один аргумент типа String и возвращают логическое значение.
 */
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
//Вы можете использовать метод hasPrefix(_:) с массивом romeoAndJuliet для подсчета количества сцен в акте 1 пьесы:
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

//Аналогично, используйте метод hasSuffix(_:) для подсчета количества сцен, которые происходят в особняке Капулетти или вокруг него и ячейки монаха Лоуренса:
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    }
    if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

//🌀Представления строк Unicode
//Кроме того, получите доступ к значению String в одном из трех других представлений, совместимых с Unicode:
/*
 Коллекция единиц кода UTF-8 (доступ с помощью свойства utf8 строки)

 Коллекция кодовых единиц UTF-16 (доступ с помощью свойства utf16 строки)

 Коллекция 21-битных скалярных значений Unicode, эквивалентных форме кодирования строки UTF-32 (доступно с помощью свойства unicodeScalars строки)
 */
//Представительство UTF-8
let dogString = "Dog‼🐶"
for codeUnit in dogString.utf8 {
    print("\(codeUnit)", terminator: ", ")
}
print("")

//Представительство UTF-16
for codeUnit in dogString.utf16 {
    print("\(codeUnit)", terminator: ", ")
}
print("")

//UnicodeScalar UInt32
for codeUnit in dogString.unicodeScalars {
    print("\(codeUnit.value)", terminator: ", ")
}
print("")

for codeUnit in dogString.unicodeScalars {
    print("\(codeUnit)", terminator: ", ")
}
print("")

for codeUnit in dogString.indices {
    print("\(codeUnit)", terminator: ", ")
}
print("")

