//
//  EntryViewController.swift
//  Todo
//
//  Created by SUNG on 2023/10/05.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {
// UITextFieldDelegate는 텍스트 편집 및 유효성 검사를 관리하는 일련의 옵셔널 메서드
// Swift에선 프로토콜을 상속받았다고 하지않고, 프로토콜을 채택했다고 표현한다.

    
    @IBOutlet var field:UITextField!

    var update: (() -> Void)? // 클로저 변수 선언

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        saveTask()
        return true
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        field.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))
    }
    // title: 버튼명, style: 버튼스타일, target: target을 현재 Controller로 설정, action: #seletor(saveTask): "#selector()"는 변수를 참조하는 문법, target이 self이므로, action에 self.saveTask를 참조
    
    @objc func saveTask(){ //@objc: Objective-C문법을 사용할 수 있게 해주는 어노테이션
        guard let text = field.text, !text.isEmpty else { // guard : 조건문 ( guard 조건 else {조건이 false일 시 실행할 구문 }
            return
        }
        guard let count = UserDefaults().value(forKey: "count") as? Int else { //ViewController에서 설정한 count값 가져옴
            return
        }
        
        let newCount = count + 1
        
        UserDefaults().set(newCount, forKey: "count")
        UserDefaults().set(text, forKey: "task_\(newCount)") //현재 field의 값 text에 저장
        
        update?() // ViewController의 vc.update 실행
        
        navigationController?.popViewController(animated: true)

    }
    
}
