//
//  FansViewController.swift
//  ACExam
//
//  Created by martin on 2016/3/28.
//  Copyright © 2016年 Frainbow. All rights reserved.
//

import UIKit

class FansViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var errorMessageLabel: UILabel!

    var signs: [String] = [] {

        didSet {
            inputTextView.text = signs.joinWithSeparator("\n")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        inputTextField.text = ""
        inputTextView.text = ""
        errorMessageLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func newSign(sender: AnyObject) {
        
        guard inputTextField.text != "" else {
            errorMessageLabel.text = "名字不能留白"
            return
        }
        
        guard signs.count < 3 else {
            errorMessageLabel.text = "只能簽三筆"
            return
        }
        
        defer {
            inputTextField.text = ""
            errorMessageLabel.text = ""
        }
        
        if let sign = inputTextField.text {
            signs.append(sign)
        }
        else {
            print("\(#function): unknown error")
        }
    }
}
