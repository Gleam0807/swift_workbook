enum Apple {
    case iPhone, iPad, airPods, mac, trackPad, magicKeyBoard
}

// 생성 및 값 변경
var myAppleItems: Apple = .iPhone //방법 1
var myAppleItems2 = Apple.iPhone //방법 2
var myAppleitems3: Apple = Apple.iPhone //방법 3

print(type(of: MyAppleItems2)) // Apple

// 같은 타입인 Apple 내부의 항목으로만 MyAppleItems의 값을 변경해줄 수 있다.
MyAppleItems = .AirPods
print(MyAppleItems) // AirPods
