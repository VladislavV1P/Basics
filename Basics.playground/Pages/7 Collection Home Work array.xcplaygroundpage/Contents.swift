//: [Previous](@previous)

import Foundation

//1) сделать массив содержащий дни каждого месяца
// вывести массив
// 2) создать массив с именами месяцев
//вывести вместе имена и дни месяца
// 3) используя tuples создать массив содержащий название и количество дней
// 4) вывести количество дней начиная с последнего индекса
// 5) сколько дней до определенной даты 14 ноября

// 6) создать массив ояпциональных int [1 , 5 , nil , 6 ]
// 6.1 посчитать сумму через цикл bading , ! , ??

// 7 создать массив с алфавитом char  , создаем пустой массив с string ^ первый алфавит переводим в string в обратном порядке.

var daysOfMonth = [31,28,31,30,31,30,31,31,30,31,30,31]
for i in daysOfMonth {
    print(i)
}

var nameOfMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
for i in 0..<12 {
    print("\(nameOfMonth[i]) =  \(daysOfMonth[i]) days")
}

var month = [(name: String, day: Int)]()

for i in 0..<12 {
    month.append((nameOfMonth[i],daysOfMonth[i]))
}

month
let lastIndex = daysOfMonth.count - 1
for i in daysOfMonth.indices {
    var index = lastIndex - i
    print(daysOfMonth[index])
}

let myBirthday = (name: "January",day: 18)

var countDay = 0
var treger = 0

for (name , day) in month {
    if name == myBirthday.name {
        countDay += myBirthday.day
        treger = 1
    } else if treger != 1{
        countDay += day
    }
    print(countDay)
}

var arrayInt = [1, 4, 5 ,nil ,6 ,6, nil]
var sumDigit = 0

for digit in arrayInt {
    if let digit {
        sumDigit += digit
    }
}
print(sumDigit)

sumDigit = 0
for digit in arrayInt {
    sumDigit += digit ?? 0
}
sumDigit

sumDigit = 0

for digit in arrayInt {
    if digit != nil {
        sumDigit += digit!
    }
}
sumDigit 

var alphabet = "abcdefghijklmnopqrstuvwxyz"
var alphabetArray: [Character] = []

for char in alphabet {
    alphabetArray.append(char)
}
alphabetArray

var alphabetString: [String] = []

var lastIndex1 = alphabetArray.count - 1

for index in alphabetArray.indices {
    alphabetString.append(String(alphabetArray[lastIndex1 - index]))
}
alphabetString

for char in alphabetArray {
    alphabetString.insert(String(char), at: 0)
}
