/// 반복문과 조건문을 활용하여 distribution 베열의 인덱스마다의 점수대와 숫자만큼 "+" 를 출력해주세요
/*
ex. distribution = [3, 4, 5, 1, 2, 6, 3, 2, 4, 3, 1] 이라면

출력값은 아래와 같습니다.

00-09 : +++
10-19 : ++++
20-29 : +++++
30-39 : +
40-49 : ++
50-59 : ++++++
60-69 : +++
70-79 : ++
80-89 : ++++
90-99 : +++
100   : +
*/

func plusReplace() {
	var distribution: [Int] = [3, 4, 5, 1, 2, 6, 3, 2, 4, 3, 1]

	for i in 0..<distribution.count {
		var rangeStr = "-" + String(i * 10 + 9)
		if i == 10 { rangeStr = "" }

		let plus = String(repeating: "+", count: distribution[i])

		print("\(i * 10)\(rangeStr) : \(plus)")
	}
}

plusReplace()
