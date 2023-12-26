import UIKit

func q1(num1: Int, op: String, num2: Int) -> String {
    
    if op == "+" {
        return "\(num1 + num2)"
    } else if op == "-" {
        return "\(num1 - num2)"
    } else if op == "*" {
        return "\(num1 * num2)"
    } else if op == "/" {
        if num2 == 0 { return "0으로 나눌 수 없습니다." }
        
        return "\(num1 / num2)"
    } else {
        return "올바르지 않은 연산자"
    }

}

func q2(num1: Int, op: String, num2: Int) -> String {
    
    switch op {
        
    case "+":
        return "\(num1 + num2)"
    case "-":
        return "\(num1 - num2)"
    case "*":
        return "\(num1 * num2)"
    case "/":
        if num2 == 0 { return "0으로 나눌 수 없습니다." }
        return "\(num1 + num2)"
    default:
        return "올바르지 않은 연산자"
    }

}

func q1_1(str: String) -> String {
    let array = str.components(separatedBy: " ")
    
    if array.count != 3 {
        return "올바르지 않은 인자 수 입니다."
    }
    
    guard let num1 = Int(array[0]) else { return "첫번째 숫자가 올바르지않습니다." }
    guard let num2 = Int(array[2]) else { return "두번째 숫자가 올바르지않습니다." }
    
    let op = array[1]
    
    if op == "+" {
        return "\(num1 + num2)"
    } else if op == "-" {
        return "\(num1 + num2)"
    } else if op == "*" {
        return "\(num1 * num2)"
    } else if op == "/" {
        if num2 == 0 { return "0으로 나눌 수 없습니다." }
        return "\(num1 / num2)"
    } else {
        return "올바르지 않은 인수"
    }
    
}

func q2_2(num1: Float, op: String, num2: Float) -> String {
    var result: Float = 0
    
    switch op {
    case "+":
        result = num1 + num2
    case "-":
        result = num1 - num2
    case "*":
        result = num1 * num2
    case "/":
        if num2 == 0 { return "0으로 나눌 수 없습니다." }
        result = num1 / num2
    default:
        return ""
    }
    
    result.round(.toNearestOrAwayFromZero)
    
    return "\(result)"

}
//q1(num1:1, op:"/", num2:0)

//q2(num1:1, op:"+", num2:3)
q1_1(str: "3 + 2")


q2_2(num1: 3.2, op:"+", num2:3.4)
