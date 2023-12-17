import Foundation


//문제
//> random함수를 통해 숫자 10개를 뽑아 `lottos` 라는 배열에 담아준다.
//> 당첨번호 5개가 담긴 `winNumbers` 라는 숫자 배열이 있다.
//> `lottos`에서 당첨번호와 일치하는 숫자의 갯수를 프린트해보자.

func miniLotto() {
    var lottos: [Int] = []
    
    let winNumbers: [Int] = [3, 23, 27, 37, 44]
    
    while lottos.count < 10 {
        let random = Int.random(in: 1...50)
        lottos.append(random)
    }
    
    let matchingNumbers = lottos.filter { winNumbers.contains($0) }
    
    print("﻿10﻿개﻿의 ﻿로﻿또: \(lottos)")
    print("﻿당﻿첨﻿번﻿호: \(winNumbers)")
    print("﻿﻿일﻿치﻿하﻿는 ﻿숫﻿자: \(matchingNumbers)")
}

miniLotto()

