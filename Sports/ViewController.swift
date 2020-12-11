//
//  ViewController.swift
//  Sports
//
//  Created by Thomas Mataconis on 5/8/20.
//  Copyright © 2020 Thomas Mataconis. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
 @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is IndvidSportViewController {
            let vc = segue.destination as! IndvidSportViewController
            let label: Labels = Labels(name: segue.identifier!)
            vc.sports = label.name
            vc.calc1 = label.calc1
            vc.calc2 = label.calc2
            vc.calc3 = label.calc3
        }
    }

}

