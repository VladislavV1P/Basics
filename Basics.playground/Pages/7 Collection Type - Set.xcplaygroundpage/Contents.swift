//: [Previous](@previous)

import Foundation

//Множества - Set
/*
 Набор хранит различные значения одного и того же типа в коллекции без определенного порядка. Вы можете использовать набор вместо массива, когда порядок элементов не важен или когда вам нужно убедиться, что элемент появляется только один раз.
 */

let setOne = Set<String>()
let setTwo: Set<String> = []
var setThere: Set = [1, 2, 3, 4]

setThere.insert(5)
setThere.insert(6)
setThere.insert(7)
setThere.sorted()

setThere.isEmpty
setThere.remove(6)
setThere.count

let boolValue = setThere.contains(3)

let setFromOneToThere: Set = [1, 2, 3]
let setFromFourToNine: Set = [3, 4, 5, 6, 7, 8, 9]

//объединение
let commonArray = setFromOneToThere.union(setFromFourToNine).sorted()
//пересечение
let commonValuesSet = setFromOneToThere.intersection(setFromFourToNine)
// не пересекающиеся массив
let notRepeatValuesArray = setFromOneToThere.symmetricDifference(setFromFourToNine).sorted()
// все уникальные значения первого сета
let subtractingValueSet = setFromOneToThere.subtracting(setFromFourToNine).sorted()

