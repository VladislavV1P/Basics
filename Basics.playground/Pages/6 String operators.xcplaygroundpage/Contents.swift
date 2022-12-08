//: [Previous](@previous)

import Foundation

var greeting = "Hello, world"

//Специальные символы в строковых литералах
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

//Узнайте, пусто ли значение String, проверив его свойство Boolean isEmpty
if greeting.isEmpty {
    print("Nothing to see here")
}

//Character values for a String
for character in "Dog!🐶" {
    print(character)
}
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)

//Вы можете добавить значение Character
let exclamationMark: Character = "!"
greeting.append(exclamationMark)

//🌀Скалярные значения Unicode
let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"

//🌀Подсчет символов
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

//🌀Доступ к строке и ее изменение

greeting.prefix(5)
greeting.suffix(6)
greeting[greeting.startIndex..<greeting.endIndex]

greeting[greeting.startIndex]

greeting[greeting.index(
    before: greeting.endIndex)]

greeting[greeting.index(
    after: greeting.startIndex)]

let index = greeting.index(
    greeting.startIndex,
    offsetBy: 7)

let index2 = greeting.index(
    greeting.startIndex,
    offsetBy: 7,
    limitedBy: greeting.endIndex) ?? greeting.startIndex

greeting[index2]

greeting[greeting.index(
    before: greeting.endIndex)]

//🌀Подстроки
let index1 = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index1]
let newString = String(beginning)

//🌀Используйте свойство indices для доступа ко всем индексам отдельных символов в строке.
for a in greeting.indices {
    print(a , " \(greeting[a])")
}

//🌀Вставка и удаление
var welcome = "Hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)

//🌀Равенство префиксов и суффиксов

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

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

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
let dogString = "Dog‼🐶"
for codeUnit in dogString.utf8 {
    print("\(codeUnit)", terminator: ", ")
}
print("")

for codeUnit in dogString.utf16 {
    print("\(codeUnit)", terminator: ", ")
}
print("")

for codeUnit in dogString.unicodeScalars {
    print("\(codeUnit.value)", terminator: ", ")
}
print("")

for codeUnit in dogString.unicodeScalars {
    print("\(codeUnit)", terminator: ", ")
}
print("")
