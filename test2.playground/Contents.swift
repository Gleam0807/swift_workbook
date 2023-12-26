import UIKit

var greeting = "Hello, playground"

/// 6번
/// 반 학생들의 점수가 담긴 배열이 있습니다.
/// 우리반에 점수대 별로 학생수를 파악하려 합니다.
let scoreList: [Int] = [
  10, 48, 19, 80, 76, 81, 71, 53, 53, 88,
  75, 91, 27, 27, 26, 22, 63, 4, 86 , 44,
  67, 62, 7, 8, 25, 22, 68, 54, 96, 12,
  80, 67, 73, 4, 41, 59, 95, 20, 45, 34,
  45, 91, 42, 2, 74, 13, 53, 97, 58 ,21
]



func score() -> [Int] {
    var distribution: [Int] = .init(repeating: 0, count: 10)
    
    
//    for score in scoreList {
//        if score >= 0 && score < 10 {
//            distribution[0] += 1
//        } else if score >= 10 && score < 20 {
//            distribution[1] += 1
//        } else if score >= 20 && score < 30 {
//            distribution[2] += 1
//        } else if score >= 20 && score < 30 {
//            distribution[3] += 1
//        } else if score >= 30 && score < 40 {
//            distribution[4] += 1
//        } else if score >= 40 && score < 50 {
//            distribution[5] += 1
//        }
//    }
    
    for i in 0..<scoreList.count {
        let score = scoreList[i]
        
        for element in 0..<distribution.count {
            if score >= (element * 10) && score < (element * 10 + 10) {
                distribution[element] += 1
            }
        }
        
    }
    return distribution
}

score()

