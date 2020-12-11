//
//  IndvidSportViewController.swift
//  Sports
//
//  Created by Thomas Mataconis on 5/13/20.
//  Copyright © 2020 Thomas Mataconis. All rights reserved.
//
import UIKit

class IndvidSportViewController: UIViewController {

    @IBOutlet weak var Sports: UILabel!
    
    @IBOutlet weak var Calc1: UIButton!
    @IBOutlet weak var Calc2: UIButton!
    @IBOutlet weak var Calc3: UIButton!
    
    var sports = "Sports"
    var calc1 = "calc1"
    var calc2 = "calc2"
    var calc3 = "calc3"

    override func viewDidLoad() {
        super.viewDidLoad()
        Sports.text = sports
        Calc1.setTitle(calc1, for: .normal)
        Calc2.setTitle(calc2, for: .normal)
        Calc3.setTitle(calc3, for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let label: Labels = Labels(name: sports)
         if segue.destination is ThirdCalcViewController {
            let vc = segue.destination as! ThirdCalcViewController
            if segue.identifier == "calc1" {
                           
            vc.name = label.calc1
            vc.numOne = label.num1Calc1
            vc.numTwo = label.num2Calc1
            vc.labels = label.name
            } else if segue.identifier == "calc2" {
                vc.name = label.calc2
                vc.numOne = label.num1Calc2
                vc.numTwo = label.num2Calc2
                vc.labels = label.name
            }
            else if segue.identifier == "calc3"{
            vc.name = label.calc3
            vc.numOne = label.num1Calc3
            vc.numTwo = label.num2Calc3
            vc.numThree = label.num3Calc3
            vc.labels = label.name
            }
        }
    }


}
