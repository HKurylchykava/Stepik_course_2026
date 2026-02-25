import Foundation

//1) Напишите программу которая зашифрует сообщение с помощью словаря. У вас есть словарь с буквами.
var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

let text = "hello programmer"
func coder(input: String, code: [String: String]) -> String{
   let text = Array(input)
   var result: String = ""
   
   for character in text {
       let charAsString = String(character)
       
       if code.keys.contains(charAsString) {
           result.append(code[charAsString]!)
       } else {
           result.append(charAsString)
       }
   }
   return result
}
print(coder(input: text, code: code))

//2) У вас есть массив из чисел. Создайте словарь с этими числами и количеством повторении.
let arrayNumbers = [1,3,5,7,8,9,10,1,3,5,10,10,1]
func repeatNumbers(array: [Int]) -> [Int: Int] {
   var dictionary: [Int:Int] = [:]

   for value in array {
       dictionary[value, default: 0] += 1
   }
   return dictionary
}
print(repeatNumbers(array: arrayNumbers))

//3)  У вас есть словарь в котором есть имя и фамилия студента(key) и gpa(value). Найдите средний gpa из этого словаря.
let students: [String: Double] = ["Иванов": 1, "Петров": 20, "Сидоров": 1, "Карпович": 2, "Мицкевич": 75, "Александров": 4]

func averageGpa(students: [String: Double])-> Double {
   var sumGpa: Double = 0
   for value in students.values {
       sumGpa += value
   }
   return sumGpa/Double(students.count)
}

print(averageGpa(students: students))

//4) У вас есть словарь в котором есть имя и фамилия студента(key) и gpa(value). Создайте новый словарь в котором будут студенты gpa которых выше 3.0

func bestStudents(students: [String: Double]) -> [String:Double] {
   var bestStudents : [String: Double] = [:]
   for (student,gpa) in students {
       if gpa >= 3 {
           bestStudents[student] = gpa
       }
   }
   return bestStudents
}
print(bestStudents(students: students))

