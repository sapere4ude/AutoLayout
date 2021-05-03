//
//  ViewController.swift
//  AutoLayoutCodeAnchor
//
//  Created by Kant on 2021/05/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myBtn = UIButton.init(type: .system)
        myBtn.setTitle("My Button!", for: .normal)
        
        self.view.addSubview(myBtn)
        
        // true 로 적용되면 frame 값이 적용되는것
        myBtn.translatesAutoresizingMaskIntoConstraints = false
        
        // constaints 값은 기본적으로 false. 그래서 true 로 변경해줘야 사용 가능하다.
        //myBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myBtn.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        
        
        let myLabel = UILabel.init()
        myLabel.text = "My Label"
        
        self.view.addSubview(myLabel)
        
        // false 로 되어야 오토레이아웃 설정이 적용되는것
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // 시스템에서 사용하는 영역을 벗어나서 적용시키기 위해 safeAreaLayoutGuide 를 사용함
        myLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        myLabel.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 30).isActive = true
    }
}

