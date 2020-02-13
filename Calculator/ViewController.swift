//
//  ViewController.swift
//  Calculator
//
//  Created by Aoyagi Hiroki on 2020/02/14.
//  Copyright © 2020 Aoyagi Hiroki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapCalculate(_ sender: Any) {
        //計算ボタンをタップしたときの処理
        print("didTapCalculate")
        
        let first = Int(self.firstTextField.text ?? "")!
        let second = Int(self.secondTextField.text ?? "")!
        //print(first)
        //print(second)
        
//        print(first + second)
//        print(first - second)
//        print(first * second)
//        print(first / second)
        //print(segmentedControl.selectedSegmentIndex)
        
        var result = 0
        switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            result = first + second
            break
        case 1:
            result = first - second
            break
        case 2:
            result = first * second
            break
        case 3:
            result = first / second
            break
        default:
            break
        }
        print(result)
        resultLabel.text = String(result)
    }
    
}
