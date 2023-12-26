//
//  main.swift
//  commandTool
//
//  Created by SUNG on 12/10/23.
//

import Foundation

func checkInput(input: String) -> Bool {
    if input != "O" && input != "X" {
        return false
    }
    return true
}

func make(){
    print("당신은 소수의 인원과 친밀한 관계를 유지하는 것을 선호합니까?")
    let input1 = readLine()!

    //if !checkInput(input: input1) { return }
    guard checkInput(input: input1) else { return }
    
    print("당신은 주변에서 조용하고 신중하다는 평가를 받는 편입니까?")
    let input2 = readLine()!
    
    guard checkInput(input: input2) else { return }
    print("당신은 자신만의 가치관이 뚜렷한 편입니까?")
    let input3 = readLine()!
    
    guard checkInput(input: input3) else { return }
    
    let array = [input1, input2, input3]
    let count = array.filter { element in
        element == "O"
    }.count
    
    if count == 3 {
        print("3개 모두 O를 택한 당신은 명백한 I 입니다!")
    } else if count == 2 || count == 1 {
        print("\(count)개를 택한 당신은 어느쪽에도 치우치지 않아 아직 더 조사가 필요합니다")
    } else {
        print("0개의 O를 택한 당신은 명백한 E 입니다!")
    }
    

    
}

//make()


//"1h2e3ll4o5"` 문자열에서
//숫자만 걸러서 `numbers` 라는 문자열에
//문자만 걸러서 `letters` 라는 문자열에
//담아 프린트하기해보자

func dataFilter() {
    print("﻿문﻿자﻿열﻿을 ﻿﻿입﻿력﻿해﻿주﻿세﻿요.")
    let input = readLine()!
    
    var numbers = ""
    var letters = ""

    for char in input {
        if let number = Int(String(char)) {
            numbers.append(String(number))
        } else {
            letters.append(char)
        }
    }

    print("numbers: \(numbers)")
    print("letters: \(letters)")

}

//dataFilter()

/*func squareNum() {
    var numbers: [Int] = [1,2,3,4,5]
    
    var squareNumbers: [Int] = numbers.map{$0 * $0}
    
    print(squareNumbers)
}*/

//squareNum()

func dataFilter2() {
    print("﻿문﻿자﻿열﻿을 ﻿﻿입﻿력﻿해﻿주﻿세﻿요.")
    let input = readLine()!
    
    var numbers = ""
    var letters = ""

//    for char in input {
//        if let number = Int(String(char)) {
//            numbers.append(String(number))
//        } else {
//            letters.append(char)
//        }
//    }
    for char in input {
        if char.isNumber {
            numbers.append(char)
        }
        
        if char.isLetter {
            letters.append(char)
        }
    }
    
//    for i in 0..< input.count {
//        지양
//    }
    
//    input.forEach { char in
//        <#code#>
//    }

    print("numbers: \(numbers)")
    print("letters: \(letters)")

}

func miniLotte() {
    var lottos: [Int] = []
    
    let winNumbers: [Int] = [3,23,27,37,44]
    
    while lottos.count < 10 {
        let random = Int.random(in: 1...50)
        lottos.append(random)
    }
    
    let matchingNumbers = lottos.filter { winNumbers.contains($0) }

    print("﻿10﻿개﻿의 ﻿로﻿또: \(lottos)")
    print("﻿당﻿첨﻿번﻿호: \(winNumbers)")
    print("﻿﻿일﻿치﻿하﻿는 ﻿숫﻿자: \(matchingNumbers)")
    print("﻿일﻿치﻿하﻿는﻿ ﻿숫﻿자﻿개﻿수: \(matchingNumbers.count)﻿개﻿")
}

//miniLotte()

// dataFilter2()

func miniLotto() {
    var lottos: [Int] = []
    
    let winNumbers: [Int] = [3, 23, 27, 37, 44]
    
        while lottos.count < 10 {
            let random = Int.random(in: 1...50)
            lottos.append(random)
        }
//    lottos.forEach { lotto in
//        let random = Int.random(in: 1...50)
//        lottos.append(random)
//    }
    
    let matchingNumbers = lottos.filter { winNumbers.contains($0) }
    
    print("﻿10﻿개﻿의 ﻿로﻿또: \(lottos)")
    print("﻿당﻿첨﻿번﻿호: \(winNumbers)")
    print("﻿﻿일﻿치﻿하﻿는 ﻿숫﻿자: \(matchingNumbers)")
}

//miniLotto()

func getTotalPrice() -> String{
    print("물건의 가격을 입력해주세요.")
    let price = readLine()!
    guard let intPrice = Int(price) else { return "올바른 정수가 아닙니다." }
    
    print("물건의 갯수를 입력해주세요.")
    let cnt = readLine()!
    guard let intCnt = Int(cnt) else { return "올바른 정수가 아닙니다." }
    
    return String(intPrice * intCnt)
}

//print(getTotalPrice())


