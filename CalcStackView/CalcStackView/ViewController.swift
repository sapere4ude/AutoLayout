//
//  ViewController.swift
//  CalcStackView
//
//  Created by Kant on 2021/05/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // 뷰의 크기를 설정해주는 코드들은 viewDidLoad 가 불리기 이전에 실행되어야 한다.
    // viewDidLoad 에서 설정해주면 비율이 깨지거나 적용되지 않는 코드들이 존재한다.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        resultLabel.layer.cornerRadius = 50
        // 곡률 넣어주는 코드. clipsToBounds 와 같음
        //resultLabel.layer.masksToBounds = true
        resultLabel.clipsToBounds = true
        btn1.layer.cornerRadius = btn1.bounds.width / 2
    }
}
