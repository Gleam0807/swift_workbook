/*
 정수 배열 numbers가 매개변수로 주어집니다. numbers의 각 원소에 두배한 원소를 가진 배열을 return하도록 solution 함수를 완성해주세요.
 
 입출력 예
 numbers                            result
 [1, 2, 3, 4, 5]                [2, 4, 6, 8, 10]
 [1, 2, 100, -99, 1, 2, 3]    [2, 4, 200, -198, 2, 4, 6]
*/

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    return numbers.map{ $0 * 2 }
}
