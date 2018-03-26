//
//  ViewController.swift
//  random
//
//  Created by D7703_18 on 2018. 3. 26..
//  Copyright © 2018년 D7703_18. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func guess(_ sender: Any) {
        //랜덤 숫자 생성
        let number = arc4random() % 6
        let number2 = String(number)
        
        if(number2 == input.text)
        {
            resultLabel.text="빙고"
        }
        else
        {
            resultLabel.text="실패 숨겨진 숫자는 현재 \(number)"
        }
        
        input.resignFirstResponder()
        
}
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //input.resignFirstResponder()
        view.endEditing(true)
        input.backgroundColor = UIColor.green
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
        input.resignFirstResponder()
        view.backgroundColor = UIColor.yellow
        return true
    }
}
