//: [Previous](@previous)

import Foundation

// example 1
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

// example 2
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// example 3
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// example 4
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

// example 5
let minutes = 60
for tickMark in 0..<minutes {
    // render the tick mark each minute (60 times)
    print(tickMark)
}

// example 6
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
    print(tickMark)
}

// example 7
let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    // render the tick mark every 3 hours (3, 6, 9, 12)
    print(tickMark)
}

// example 8

