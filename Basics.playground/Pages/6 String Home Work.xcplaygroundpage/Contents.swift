//: [Previous](@previous)

import Foundation

/*
 ДЗ
 1) Создать пять строĸовых ĸонстант.Одни ĸонстанты это тольĸо цифры, другие содержат
 еще и буĸвы.
 Найти сумму всех этих ĸонстант приведя их ĸ Int.
 использовать ??
 далее вывести в строку используя конкатанацию и интерполяцию
 
 2) найти смайлы и посчитать их длину через count и length
 3) через for пройти по алфавиту и найти char - x и показать его индекс
 */

//3)
let abc = "abcdefghijklmnopqrstuvwxyz"
let charX: Character = "x"
var charIndex = 0

for char in abc {
    if char < charX {
        charIndex += 1
    }
}

let indexX = abc.index(abc.startIndex, offsetBy: charIndex)
abc[indexX]

let indexXX = abc.firstIndex(of: "x") ?? abc.startIndex
abc[indexXX]

//2)
let hammerAndSickle = "\u{262D}"
let stars = "\u{269D}"
let fi = "\u{2182}"
let m = "\u{24C2}"
let sun = "\u{2600}"
let rein = "\u{2614}"
let pi = "\u{0BF9}"
let ice = "\u{1F3C2}"

(hammerAndSickle as NSString).length

let arrayString = [hammerAndSickle,stars, fi, m, sun, rein, pi, ice]

for str in arrayString {
    print("\(str) length = \((str as NSString).length), count = \(str.count)")
}

//1)

let str1 = "123"
let str2 = "3535d"
let str3 = "54"
let str4 = "r45"
let str5 = "0"

let int1 = Int(str1) ?? 0
let int2 = Int(str2) ?? 0
let int3 = Int(str3) ?? 0
let int4 = Int(str4) ?? 0
let int5 = Int(str5) ?? 0

let strInt1 = Int(str1) != nil ? str1 : "nil"
let strInt2 = Int(str2) != nil ? str2 : "nil"
let strInt3 = Int(str3) != nil ? str3 : "nil"
let strInt4 = Int(str4) != nil ? str4 : "nil"
let strInt5 = Int(str5) != nil ? str5 : "nil"

let sum = int1 + int2 + int3 + int4 + int5

print("\(strInt1) + \(strInt2) + \(strInt3) + \(strInt4) + \(strInt5) = \(sum)")
var strSum = String()
var arrayStrSum = [strInt1, strInt2, strInt3, strInt4, strInt5]
var countArray = arrayStrSum.count
var total = 0

for str in arrayStrSum {
    strSum += str
    total += 1
    if countArray != total {
        strSum += " + "
    } else {
        strSum += " = "
    }
}
strSum += String(sum)

arrayStrSum[arrayStrSum.count - 1]
var lastArray = arrayStrSum.removeLast()
arrayStrSum
      
