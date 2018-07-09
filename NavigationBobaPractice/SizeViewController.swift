//
//  SizeViewController.swift
//  NavigationBobaPractice
//
//  Created by Sophie on 2/11/18.
//  Copyright © 2018 Sophie Zhou. All rights reserved.
//

import UIKit

class SizeViewController: UIViewController {

    @IBOutlet weak var largeButton: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBOutlet weak var smallButton: UIButton!

    //Variable to track drink type selection
    var drinkType = ""
    
    //Custom init taking drink choice.
    init(tea drinkChoice: String) {
        self.drinkType = drinkChoice
        super.init(nibName: "SizeViewController", bundle: nil)
    }
    
    //required coder init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        largeButton.addTarget(self, action: #selector(sizePressed), for: .touchUpInside)
        mediumButton.addTarget(self, action: #selector(sizePressed), for: .touchUpInside)
        smallButton.addTarget(self, action: #selector(sizePressed), for: .touchUpInside)
    }
    
    //Saves size choice and passes on tea plus size choice to ToppingsViewController
    @objc private func sizePressed(button: UIButton) {
        
        var drinkSize = ""
        
        if button == largeButton {
            drinkSize = "Large"
        }
        else if button == mediumButton {
            drinkSize = "Medium"
        }
        else if button == smallButton {
            drinkSize = "Medium"
        }
        
        let toppingsView = ToppingsViewController(tea: self.drinkType, size: drinkSize)
        self.navigationController?.pushViewController(toppingsView, animated: true)
    }

//    @objc func largePressed() {
//
//        let toppings = ToppingsViewController()
//        self.navigationController?.pushViewController(toppings, animated: true)
//    }
//    @objc func mediumPressed() {
//
//        let toppings = ToppingsViewController()
//        self.navigationController?.pushViewController(toppings, animated: true)
//    }
//    @objc func smallPressed() {
//
//        let toppings = ToppingsViewController()
//        self.navigationController?.pushViewController(toppings, animated: true)
//    }
}
