//
//  TaskViewController.swift
//  Todo
//
//  Created by SUNG on 2023/10/05.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    var task: String?
    
    var update: (() -> Void)? // 클로저 변수 선언

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = task
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask() {
        guard let taskToDelete = task else {
            return
        }

        // 여기서 작업을 삭제하는 로직을 추가합니다.
        // 예시: UserDefaults에서 해당 작업을 삭제하는 코드를 추가합니다.
        if var count = UserDefaults().value(forKey: "count") as? Int {
            // Task 삭제
            for x in 1...count {
                if let task = UserDefaults().value(forKey: "task_\(x)") as? String, task == taskToDelete {
                    UserDefaults().removeObject(forKey: "task_\(x)")
                    count -= 1
                    UserDefaults().set(count, forKey: "count")
                    break
                }
            }

            // 이후에 필요하다면 메인 목록을 업데이트할 수 있습니다.
            // 예시: 메인 뷰 컨트롤러의 updateTasks 메서드 호출


            update?()
            
            // 작업 삭제 후 뷰 컨트롤러를 닫습니다.
            navigationController?.popViewController(animated: true)			

            print("Deleted task: \(taskToDelete)")
        }
    }
}
