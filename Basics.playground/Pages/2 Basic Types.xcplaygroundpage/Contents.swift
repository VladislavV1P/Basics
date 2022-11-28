//: [Previous](@previous)

import Foundation

//Basic Types
/*
1) Используя функцию Print вывести в консоль диапазоны (минимумы и максимумы) наших чисел (базовых типов) и чтоб было красиво
2) Создайте 3 ĸонстанты с типами Int, Float и Double (причем нельзя использовать ноль)
Создайте другие 3 ĸонстанты, тех же типов: Int, Float и Double, - при чем ĸаждая из них это сумма первых трех, но со своим типом
3) Сравните Int результат суммы с Double с помощью конструкции if - else и выведите отчет в ĸонсоль
*/
extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = " "
        return formatter
    }()
}

extension Numeric {
    var formattedWithSeparator: String { Formatter.withSeparator.string(for: self) ?? "" }
}
 

let minInt8 = Int8.min.formattedWithSeparator
let maxInt8 = Int8.max.formattedWithSeparator
let minInt16 = Int16.min.formattedWithSeparator
let maxInt16 = Int16.max.formattedWithSeparator
let minInt32 = Int32.min.formattedWithSeparator
let maxInt32 = Int32.max.formattedWithSeparator
let minInt64 = Int64.min.formattedWithSeparator
let maxInt65 = Int64.max.formattedWithSeparator
let mimInt = Int.min.formattedWithSeparator
let maxInt = Int.max.formattedWithSeparator
let minUInt8 = UInt8.min.formattedWithSeparator
let maxUInt8 = UInt8.max.formattedWithSeparator
let minUInt16 = UInt16.min.formattedWithSeparator
let maxUInt16 = UInt16.max.formattedWithSeparator
let minUInt32 = UInt32.min.formattedWithSeparator
let maxUInt32 = UInt32.max.formattedWithSeparator
let minUInt64 = UInt64.min.formattedWithSeparator
let maxUint64 = UInt64.max.formattedWithSeparator

print("minInt8   = \(minInt8)")
print("maxInt8   = \(maxInt8)")
print("minInt16  = \(minInt16)")
print("maxInt16  = \(maxInt16)")
print("minInt32  = \(minInt32)")
print("maxInt32  = \(maxInt32)")
print("minInt64  = \(minInt64)")
print("maxInt65  = \(maxInt65)")
print("mimInt    = \(mimInt)")
print("maxInt    = \(maxInt)")
print("minUInt8  = \(minUInt8)")
print("maxUInt8  = \(maxUInt8)")
print("minUInt16 = \(minUInt16)")
print("maxUInt16 = \(maxUInt16)")
print("minUInt32 = \(minUInt32)")
print("maxUint32 = \(maxUInt32)")
print("minUint64 = \(minUInt64)")
print("maxUInt64 = \(maxUint64)")


let randomInt = Int.random(in: -10...10)
let randomFloat = Float.random(in: -100.0...100.0)
let randomDouble = Double.random(in: -1000...1000)

let sumInt = Int(Double(randomInt) + Double(randomFloat) + randomDouble)
let sumFloat = Float(randomInt) + randomFloat + Float(randomDouble)
let sumDouble = Double(randomInt) + Double(randomFloat) + randomDouble

if Double(sumInt) >= sumDouble {
    print("sumInt big")
} else {
    print("sumDouble big")
}

