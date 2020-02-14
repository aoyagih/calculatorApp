//
//  ResultViewController.swift
//  Calculator
//
//  Created by Aoyagi Hiroki on 2020/02/15.
//  Copyright © 2020 Aoyagi Hiroki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var result = 0
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        print("計算結果")
        print(result)
        
        self.resultLabel.text = String(result)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
