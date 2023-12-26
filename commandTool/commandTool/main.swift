//
//  main2.swift
//  commandTool
//
//  Created by SUNG on 12/19/23.
//

import Foundation

//func getTotalPrice2() -> String{
//    print("물건의 가격을 입력해주세요.")
//    let price = readLine()!
//    guard let intPrice = Int(price) else { return "올바른 정수가 아닙니다." }
//    
//    print("물건의 갯수를 입력해주세요.")
//    let cnt = readLine()!
//    guard let intCnt = Int(cnt) else { return "올바른 정수가 아닙니다." }
//    
//    return String(intPrice * intCnt)
//}
//
//print(getTotalPrice2())

//func getAdvantage() -> String{
//    print("물건의 가격을 입력해주세요.")
//    let price = readLine()!
//    guard let intPrice = Double(price) else { return "올바른 실수가 아닙니다." }
//    
//    print("물건의 갯수를 입력해주세요.")
//    let cnt = readLine()!
//    guard let intCnt = Double(cnt) else { return "올바른 실수가 아닙니다." }
//    
//    return String(format: "%.0f", intPrice * intCnt * 0.1)
//}

//func inchToCm(inch: Double) {
//    let cm = inch * 2.54
//    print(cm)
//}
//
//inchToCm(inch: 10)

//func getAverage() {
//    struct Student {
//        var name = ""
//    }
//    
//    struct Score {
//        var Korean: Double
//        var Math: Double
//        var English:  Double
//        var Science: Double
//        
//        func calcAvg() -> Double{
//            return (Korean + Math + English + Science) / 4
//        }
//    }
//    
//    let student1 = Student(name: "김철수")
//    let score1 = Score(Korean: 30, Math: 45, English: 88, Science: 92)
//    
//    let avgResult = score1.calcAvg()
//    
//    
//    print("\(student1.name) 학생의 평균 점수는 \(avgResult)점 입니다.")
//}
//
//getAverage()


func isMyClassStudent() -> Bool {
    let studentList: [String: Int] = [
    "홍길동": 101001,
    "이영희": 101002,
    "김철수": 101003,
    "김김이": 101004,
    "박영수": 101005
    ]
    
    print("학생이름을 입력해주세요.")
    let input = readLine()!
    
    for StudentName in studentList {
        if input == StudentName.key {
            return true
        }
    }
    return false
}

print(isMyClassStudent())

