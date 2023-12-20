// ??르ㄹ 사용하지 않고 if let만으로
func getTotalPrice() -> String{
    print("물건의 가격을 입력해주세요.")
    let price = readLine()!
    
    let IntPrice: Int? = Int(price)
    
    var unwarpPrice = 0
    
    if let intPrice = IntPrice {
        unwarpPrice = intPrice
    }
    
    print("물건의 갯수를 입력해주세요.")
    let cnt = readLine()!
    
    let IntCnt: Int? = Int(cnt)
    
    var unwarpCnt = 0
    
    if let intCnt = IntCnt {
        unwarpCnt = intCnt
    }
    
    return String(unwarpPrice * unwarpCnt)
}



// guard let else { return }
func getTotalPrice() -> String{
    print("물건의 가격을 입력해주세요.")
    let price = readLine()!
    guard let intPrice = Int(price) else { return "올바른 정수가 아닙니다." }
    
    print("물건의 갯수를 입력해주세요.")
    let cnt = readLine()!
    guard let intCnt = Int(cnt) else { return "올바른 정수가 아닙니다." }
    
    return String(intPrice * intCnt)
}