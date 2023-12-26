//
//  ViewController.swift
//  Todo
//
//  Created by SUNG on 2023/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var tasks = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tasks" // 현재 ViewController의 title을 "Tasks"로 설정
    
        tableView.delegate = self // 대리자 설정 (테이블뷰의 시각적인 부분 수정, 행의 선택관리, 액세서리뷰 지원, 개별 행 편집)
        tableView.dataSource = self // 대리자 설정 (테이블뷰 객체에 섹션의 수와 행의 수를 알려주며, 행의 삽입, 삭제 및 재정렬하는 기능을 선택적 구현)
        // 테이블뷰의 delegate, dataSource를 self(현재 ViewController)가 제어할 수 있도록 설정
        
        // Set Up
        // UserDefaults: 내장클래스 float, int, bool, NSString 등 기본적인 자료형 데이터를 저장할 수 있다.
        // 앱이 꺼진 후에도 저장한 내용을 유지하고있다.
        if !UserDefaults().bool(forKey: "setup") {
            UserDefaults().set(true, forKey: "setup")
            UserDefaults().set(0, forKey: "count")
        }
        
        updateTasks()
    }
    
    func updateTasks(){
        tasks.removeAll() // tasks 초기화
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        
        for x in 0..<count{
            if let task = UserDefaults().value(forKey: "task_\(x+1)") as? String {
                tasks.append(task)
            }
        }
        
        tableView.reloadData() // tasks 갱신
    }
    
    @IBAction func didAddTap(){
        let vc = storyboard?.instantiateViewController(identifier: "entry") as! EntryViewController
        vc.title = "New Task"
        navigationController?.pushViewController(vc, animated: true)
        
        vc.update = {
            DispatchQueue.main.async{
                self.updateTasks()
            }
        }
    }
}

extension ViewController: UITableViewDelegate { // UITableViewDelegate: 선택항목을 관리, 횡단 머리글 및 바닥글 구성, 셀 삭제 및 재정렬, 테이블보기에서 다른 작업을 수행하는 메소드 모음
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
        
        let vc = storyboard?.instantiateViewController(identifier: "task") as! TaskViewController
        vc.title = "Task"
        vc.task = tasks[indexPath.row] //TaskViewController로 클릭한 task data 전송
        navigationController?.pushViewController(vc, animated: true)
        
    }
}

extension ViewController: UITableViewDataSource { // UITableViewDataSource: 객체가 데이터를 관리하고 테이블 보기를 위한 셀을 제공하기 위해 채택하는 메소드 모음
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        
        return cell
    }
}
    


