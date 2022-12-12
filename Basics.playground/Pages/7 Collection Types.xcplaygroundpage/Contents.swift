//: [Previous](@previous)

import Foundation

//🌀Типы коллекций

//🌀Массивы
//Создание пустого массива
var arrayOne: [Int] = []
var arrayTwo = Array<Int>()
var arrayThree = [Int]()
var arrayFour = [1, 2, 3]
var arrayFive = [Int](repeating: 10, count: 6)
var arraySix = Array(repeating: 11, count: 6)

arrayThree += arrayFive
arrayThree[1...3] = [15]
arrayThree

arrayThree.count

