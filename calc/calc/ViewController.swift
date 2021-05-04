//
//  ViewController.swift
//  calc
//
//  Created by eileenyou on 2021/05/04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet var numberBtns: [CircleButton]!
    
    //MARK: - 숫자 입력 부분
    var numberString = "" {
        didSet {
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.resultLabel.textColor = .white
                self.resultLabel.text = self.numberString
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for btnItem in numberBtns {
            btnItem.addTarget(self, action: #selector(onNumberBtnClicked(sender:)), for: .touchUpInside)
        }
    }
    
    @objc fileprivate func onNumberBtnClicked(sender: UIButton) {
        guard let inputString = sender.titleLabel?.text else { return }
        numberString.append(inputString)
    }
    @IBAction func AllClearBtn(_ sender: Any) {
        numberString = "0"
    }
}
