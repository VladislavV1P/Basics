//: [Previous](@previous)

import Foundation

let dictOne = Dictionary<String, String>()
let dictTwo = [String: String]()
let dictThree: [String: String] = [:]
var nameAges = ["Vitalik": 30,
                "Vadim": 45,
                "Victor": 30]

nameAges.count
nameAges.isEmpty
nameAges["Vadim"]

let deletedAges = nameAges.updateValue(40, forKey: "Vadim")
nameAges
deletedAges
nameAges["Vitalik"] = nil

let deletedValue = nameAges.removeValue(forKey: "Victor")
nameAges

nameAges.removeAll()

//Итерация по словарю
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports["LHR"] = "London"

for (key, value) in airports {
    print(key, " = ", value)
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

//Если вам нужно использовать ключи или значения словаря с API, который принимает экземпляр Array, инициализируйте новый массив свойством keys or values:

let airportCodes = [String](airports.keys)
// airportCodes is ["LHR", "YYZ"]

let airportNames = [String](airports.values)
// airportNames is ["London Heathrow", "Toronto Pearson"]

