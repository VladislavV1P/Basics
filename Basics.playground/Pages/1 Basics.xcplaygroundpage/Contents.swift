import UIKit

//Объявление констант и переменных
let maxNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

//Несколько констант или несколько переменных в одной строке
var x = 0.0 , y = 0.1 , z = 0.2

//Аннотации типов
var wellcomeMassage: String
wellcomeMassage = "Hello"

//можете определить несколько связанных переменных одного и того же типа в одной строке
var red, green, blue: Double

//Именование констант и переменных
//Имена констант и переменных не могут содержать пробельные символы, математические символы, стрелки, скалярные значения Unicode частного использования или символы линейного и прямоугольного рисования. Они также не могут начинаться с числа, хотя номера могут быть включены в другое место в название.
let π = 3.14
let слово = "ру"
let 🚗🚕🚙 = "car"

//print(_:separator:terminator:)
print(слово)
//Swift использует строковую интерполяцию
print("Swift использует строковую интерполяцию \(🚗🚕🚙)")

//КОММЕНТАРИИ
//Однострочные комментарии начинаются с двух косых черт (//)

/*Многострочные комментарии начинаются с прямой косой черты
 , за которой следует звездочка (/*) и заканчиваются звездочкой,
 ,за которой следует косая черта вперед (*/)*/

/*Вложенные многострочные комментарии
 /*позволяют быстро и легко комментировать большие блоки кода */
 , даже если код уже содержит многострочные комментарии.*/

//🌀Целочисленные границы
let minValue = UInt8.min
let maxValue = UInt8.max

//🌀Числовые литералы
let decimalInt = 17 // 10 системе
let binaryInt = 0b10001 // 2 системе
let octalInt = 0o21 //8 системе
let hexadecimalInt = 0x11 // 16 cистема

// литералы с плавающей запятой
let decimalDuble = 12.1875
let exponentDuble = 1.21875e1 //1.21875 x 10
let hexadecimalDuble = 0xC.3p0 // 12 .  3 / 16 x 1 =  12.1875
let hexadecimalDuble2 = 0xFp2 // 15 x 2 x 2 = 60

//Числовые литералы могут содержать дополнительное форматирование
let paddedDouble = 000123.342
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

//🌀Конвертация числового типа
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

//Преобразование целых чисел и чисел с плавающей запятой
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
let integerPi = Int(pi)

//🌀Псевдонимы типа typealias
//Псевдонимы типов полезны, когда вы хотите ссылаться на существующий тип по имени, которое контекстуально более подходит
typealias AudioSample = UInt16

//После определения псевдонима типа вы можете использовать псевдоним в любом месте, где вы можете использовать исходное имя
let maxAmplitudeFound = AudioSample.min

//🌀BOOL
let orangesAreOrange = true
let turnipsAreDelicious = false
if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

//🌀Кортежи - Tuples
//Кортежи группируются в одно составное значение. Значения внутри кортежа могут быть любого типа и не обязательно должны быть одного типа друг с другом.
let http404Error = (404, "Not Found")

//Вы можете разложить содержимое кортежа на отдельные константы или переменные
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

//Если вам нужны только некоторые значения кортежа, игнорируйте части кортежа с подчеркиванием (_) при разложке кортежа
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

//Кроме того, получите доступ к значениям отдельных элементов в кортежа, используя индексные номера, начинающиеся с нуля
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

//Вы можете назвать отдельные элементы в кортежа, когда кортеж определен
let http200Status = (statusCode: 200, description: "Ok")

//Если вы называете элементы в кортеже, вы можете использовать имена элементов для доступа к значениям этих элементов
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

//🌀OPTIONAl
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // Int?

//nil
var serverResponseCode: Int? = 404
serverResponseCode = nil
var surveyAnswer: String? // = nil

//operator (!=)
if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
//Как только вы убедитесь, что необязательный действительно содержит значение, вы можете получить доступ к его базовому значению, добавив восклицательный знак (!)
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

//unwrapped
if let constantName = convertedNumber {
    print(constantName)
}

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}

//Если вам не нужно ссылаться на исходную, необязательную константу или переменную после доступа к содержащемуся в ней значению, вы можете использовать то же имя для новой константы или переменной
let myNumber = Int(possibleNumber)
if let myNumber = myNumber {
    print("My number is \(myNumber)")
}

//вы можете использовать более короткое написание, чтобы развернуть необязательный значение
if let myNumber {
    print("My number is \(myNumber)")
}

// несколько условий
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

//Неявно развернутые опции (String! а не вопросительный знак (String?)
//всегда будет иметь значение после того, как это значение будет установлено
let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString

let optionalString = assumedString

//Вы можете проверить, является ли неявно развернутый необязательный nil, так же, как вы проверяете обычный необязательный
if assumedString != nil {
    print(assumedString!)
}

if let definiteString = assumedString {
    print(definiteString)
}

//🌀Обработка ошибок
//Когда функция сталкивается с ошибкой, она выдает ошибку. Вызывающий этой функции может поймать ошибку и ответить соответствующим образом.
func canThrowAnError() throws {
//    Функция может выдавать ошибки или нет
}
do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}

//Вот пример того, как обработка ошибок может быть использована для реагирования на различные условия ошибки
enum SandwichError:Error {
    case outOfCleanDishes
    case missingIngredients(ingredients: String)
}
func eatASandwich() {
    
}
func washDishes() {
    
}
func buyGroceries(_ ingredients: String) {
    
}
//пример нескольких catch
func makeASandwich() throws {
    // ...
}

do {
    try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}

//🌀Утверждения и предварительные условия
//Разница между утверждениями и предварительными условиями заключается в том, когда они проверяются: утверждения проверяются только в отладочных сборках, но предварительные условия проверяются как в отладочных, так и в производственных сборках.
//Отладка с утверждениями
let age = 3
assert(age >= 0, "A person's age can't be less than zero.")
assert(age >= 0)

//если уже есть проверка , то можно использовать assertionFailure(_:file:line:) как утверждение , что есть неудачное утвержедение
if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

//🌀Обеспечение соблюдения предварительных условий
//Используйте предварительное условие всякий раз, когда условие может быть ложным, но должно быть определенно истинным, чтобы ваш код продолжал выполнение.
//Например, используйте предварительное условие, чтобы проверить, что нижний индекс не выходит за рамки, или проверить, что функции было передано допустимое значение.
//precondition(_:_:file:line:)
var index = 4
precondition(index > 0, "Index must be greater than zero.")

//preconditionFailure("Index must be greater than zero.")
//fatalError(_:file:line:) всегда останавливает код
//лучше использовать debugPrint()
debugPrint("/...")

//▶️1) Создать хараĸтеристиĸи студента через константы: имя, фамилия,
//отчество, год рождения, рост, вес.

let firstNameStudent = "Nica"
let LastNameStudent = "Gold"
let patronymicStudent = "Olegovna"
let yearOfBirth = 1997
let height = 187
let weight = 70
//Затем вывести все эти параметры красиво в консоль
print("Student:")
print("name: \(firstNameStudent) \(patronymicStudent)")
print("last name: \(LastNameStudent)")
print("Year of birth: \(yearOfBirth) year")
print("Height: \(height) cm")
print("Weight: \(weight) kg")



