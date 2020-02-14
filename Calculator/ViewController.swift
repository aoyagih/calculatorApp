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
        
        
        if self.firstTextField.text?.count == 0{
            showAlert(title: "Error", message: "上のテキストに文字を入れてください" )
            print("returnしました")
            return
        }
        if self.secondTextField.text?.count == 0{
            showAlert(title: "Error", message: "下のテキストに文字を入れてください")
            print("returnしました")
            return
        }
        
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
        
        self.performSegue(withIdentifier: "ResultSegue", sender: result)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //画面遷移によって処理を切り変える
        if segue.identifier == "ResultSegue"{
            let next = segue.destination as? ResultViewController
            let result = sender as! Int
            next?.result = result
        }
//        if segue.identifier == "hogeSegue"{
//
//        }
    }
    
    func showAlert(title: String, message: String)  {
        let alert:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action:UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}

