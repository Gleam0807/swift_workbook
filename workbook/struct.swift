/// 학생의 국어, 수학, 영어, 과학 총 4과목의 성적이 주어진다.
/// 학생의 이름과 평균을 리턴하는 함수를 작성하세요.
/*
<예시>
국어: 30
수학: 45
영어: 88
과학: 92
학생이름: 김철수

- > 결과: 김철수 학생의 평균 점수는 63.75점입니다.
*/

func getAverage() {
    struct Student {
        var name = ""
    }
    
    struct Score {
        var Korean: Double
        var Math: Double
        var English:  Double
        var Science: Double
        
        func calcAvg() -> Double{
            return (Korean + Math + English + Science) / 4
        }
    }
    
    let student1 = Student(name: "김철수")
    let score1 = Score(Korean: 30, Math: 45, English: 88, Science: 92)
    
    let avgResult = score1.calcAvg()
    
    
    print("\(student1.name) 학생의 평균 점수는 \(avgResult)점 입니다.")
}

getAverage()
