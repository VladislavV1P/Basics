//: [Previous](@previous)

import Foundation
/*
1) Создать тюпл с тремя параметрами, они должны быть именами параметров :
- максимальное количество отжиманий
- максимальное количество подтягиваний
- максимальное количество приседаний
Заполните его своими достижениями
Распечатайте его через print()

2) Распечатайте его через print() каждый параметр в новой строке:
"Название параметра + значение"
Причем вывод в одном случае надо делать через индекс тюпла, в другом случае через название параметра.

3) Создайте такой же тюпл для другого человека (супруги или друга) с такими же параметрами, но с другими значениями.
Используйте промежуточную переменную чтобы поменять местами соответствующие значения первого тюпла и значения второго

4) Создайте третий тюпл с теми же параметрами, но значения это разница между соответствующими значениями первого и второго тюплов.
Результат выведите в консоль
*/
/*
maximum number of push-ups
- maximum number of pull-ups
- maximum number of squats
*/
var myResultsInSports = (
    maxNumberOfPushUps: 10,
    maxNumberOfPullUps: 50,
    maxNumberOfSquats: 100)

print(myResultsInSports)
print("maximum number of push-ups = \(myResultsInSports.maxNumberOfPushUps)")
print("maximum number of pull-ups = \(myResultsInSports.1)")
print("maximum number of squats   = \(myResultsInSports.maxNumberOfSquats)")

var resultsInOlegSports = (
    maxNumberOfPushUps: 11,
    maxNumberOfPullUps: 45,
    maxNumberOfSquats: 78)

var intermediateResult = resultsInOlegSports
resultsInOlegSports = myResultsInSports
myResultsInSports = intermediateResult

let comparisonOfIndicatorsInSports = (
    maxNumberOfPushUps: myResultsInSports.0 - resultsInOlegSports.0,
    maxNumberOfPullUps: myResultsInSports.1 - resultsInOlegSports.1,
    maxNumberOfSquats: myResultsInSports.2 - resultsInOlegSports.2)

if comparisonOfIndicatorsInSports.0 == 0 {
    print("в подтягивание одинаковые результаты")
} else if comparisonOfIndicatorsInSports.0 > 0 {
    print("в подтягивание я делаю на \(comparisonOfIndicatorsInSports.0) больше")
} else {
    print("в подтягивание мой результат ниже на \(abs(comparisonOfIndicatorsInSports.0))")
}

if comparisonOfIndicatorsInSports.1 == 0 {
    print("в отжиманиях одинаковые результаты")
} else if comparisonOfIndicatorsInSports.1 > 0 {
    print("в отжиманиях я делаю на \(comparisonOfIndicatorsInSports.1) больше")
} else {
    print("в отжиманиях мой результат ниже на \(abs(comparisonOfIndicatorsInSports.1))")
}

if comparisonOfIndicatorsInSports.2 == 0 {
    print("в приседании одинаковые результаты")
} else if comparisonOfIndicatorsInSports.2 > 0 {
    print("в приседании я делаю на \(comparisonOfIndicatorsInSports.2) больше")
} else {
    print("в приседании мой результат ниже на \(abs(comparisonOfIndicatorsInSports.2))")
}
