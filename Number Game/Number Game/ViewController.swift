//
//  ViewController.swift
//  Number Game
//
//  Created by Justin Trautner on 4/5/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputLabel: UITextField!
    @IBAction func submitButton(_ sender: UIButton) {
        guess()
    }
    var target: Int = Int.random(in: 0...100)
    override func viewDidLoad() {
        super.viewDidLoad()
        inputLabel.keyboardType = UIKeyboardType.numberPad
    }
    
    func guess(){
        if target==Int(inputLabel.text!) {
            successfulAlert()
            target=Int.random(in: 0...100)
        }else{
            incorrectAlert()
        }
        print("target is \(target)")
        inputLabel.text=""
    }
    
    func successfulAlert()->Void{
        let correctAlert = UIAlertController(title: "Correct", message: "\(inputLabel.text!) was correct!!", preferredStyle: .alert)
        correctAlert.addAction(UIAlertAction(title: "Play again", style: .default, handler: nil))
        self.present(correctAlert, animated: true)
    }
    func incorrectAlert() -> Void {
        var wrongAlert = UIAlertController()
        if target<Int(inputLabel.text!)! {
            wrongAlert = UIAlertController(title: "Incorrect", message: "\(inputLabel.text!) was too high", preferredStyle: .alert)
        }else{
            wrongAlert = UIAlertController(title: "Incorrect", message: "\(inputLabel.text!) was too low", preferredStyle: .alert)
        }
        wrongAlert.addAction(UIAlertAction(title: "Play again", style: .default, handler: nil))
        self.present(wrongAlert, animated: true)
    }

}

