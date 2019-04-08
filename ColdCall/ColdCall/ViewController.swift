//
//  ViewController.swift
//  ColdCall
//
//  Created by Justin Trautner on 4/5/19.
//  Copyright © 2019 Justin Trautner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var names: [String] = ["Spongebob", "Mr. Krabs", "Squidward", "Patrick","Sandy","Larry", "Mrs. Puff"]
    
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func callButton(_ sender: UIButton) {
        getRandom()
        getRandNum()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func getRandom()->Void{
        nameLabel.text=names[Int.random(in: 0..<names.count)]
    }
    func getRandNum()->Void{
        let rand: Int=Int.random(in: 1...5)
        numLabel.text="\(rand)"
        if rand == 1 || rand == 2 {
            numLabel.textColor=UIColor.red
        }
        else if rand == 3 || rand == 4{
            numLabel.textColor=UIColor.orange
        }else{
            numLabel.textColor=UIColor.green
        }
    }


}

