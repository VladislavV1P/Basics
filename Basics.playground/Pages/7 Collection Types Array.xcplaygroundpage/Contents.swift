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

//Доступ к массиву и его изменение
var shoppingList: [String] = ["Eggs", "Milk"]

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}

shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Bananas", "Apples"]
shoppingList

shoppingList.insert("Maple Syrup", at: 0)
let mapleSyrup = shoppingList.remove(at: 0)

firstItem = shoppingList[0]
firstItem

let apples = shoppingList.removeLast()

//🌀Итерация по массиву
for item in shoppingList {
    print(item)
}

//Если вам нужен целочисленный индекс каждого элемента, а также его значение, используйте метод enumerated()

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}
