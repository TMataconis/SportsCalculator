//
//  3CalcViewController.swift
//  Sports
//
//  Created by Thomas Mataconis on 5/13/20.
//  Copyright © 2020 Thomas Mataconis. All rights reserved.
//

import UIKit

class ThirdCalcViewController: UIViewController {

   
    @IBOutlet weak var calcName: UILabel!
    @IBOutlet weak var num1: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var num3: UILabel!
    
    @IBOutlet weak var num1Text: UITextField!
    @IBOutlet weak var num2Text: UITextField!
    @IBOutlet weak var num3Text: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    var labels = "ERROR"
    var name = "ERROR"
    var numOne = "1ERROR"
    var numTwo = "2ERROR"
    var numThree = "3ERROR"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calcName.text = name
        num1.text = numOne
        num2.text = numTwo
        answer.isHidden = true
        if name == "Earned Run Average"{
            num3.text = numThree
            num3.isHidden = false
            num3Text.isHidden = false
        }
        num1Text.keyboardType = .numberPad
        num2Text.keyboardType = .numberPad
        num3Text.keyboardType = .numberPad
        answer.textColor = .white
        answer.backgroundColor = .red
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
       
    }
    
    @IBAction func compute(_ sender: UIButton) {
        answer.isHidden = false
        let label: Labels = Labels(name: labels)
        if name == "Earned Run Average" {
            let answ = label.era(numOne: num1Text.text ?? "", numTwo: num2Text.text ?? "", numThree: num3Text.text ?? "")
            if answ != -1{
                answer.text = String(format:"     %.3f     ", answ)
            } else { answer.isHidden = true}
        } else {
            let answ = label.calculate(numOne: num1Text.text ?? "", numTwo: num2Text.text ?? "")
                if answ != -1{
                    answer.text = String(format:"     %.3f",answ)
                    if name.contains("%"){
                        answer.text! += " %     "
                    } else { answer.text! += "     " }
                } else { answer.isHidden = true }
            }
    }
}
