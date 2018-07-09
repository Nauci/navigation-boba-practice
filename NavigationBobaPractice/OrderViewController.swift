//
//  OrderViewController.swift
//  NavigationBobaPractice
//
//  Created by Sophie on 2/11/18.
//  Copyright © 2018 Sophie Zhou. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    
    //Variables to track drink type, size, and toppings selections
    var drinkType = ""
    var drinkSize = ""
    var drinkToppings: Set<String> = []
    
    //Custom init taking drink choice.
    init(tea: String, size: String, toppings: Set<String>) {
        self.drinkType = tea
        self.drinkSize = size
        self.drinkToppings = toppings
        super.init(nibName: "OrderViewController", bundle: nil)
    }
    
    //required coder init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.orderLabel.textColor = UIColor(white: 0.7, alpha: 1.0)
        let toppingsList = Array(self.drinkToppings).joined(separator: ", ")
        self.orderLabel.text = "Type: \(self.drinkType) \n Size: \(self.drinkSize) \n Toppings: \(toppingsList)"
        self.orderLabel.textAlignment = .center
        self.orderLabel.numberOfLines = 0
            
        submitButton.addTarget(self, action: #selector(submitOrder), for: .touchUpInside) //Someday I'd like to grow out of laughing at 'touchUpInside'
    }
    
    override func viewDidLayoutSubviews() {
        
        let tempWidth = self.orderLabel.frame.size.width
        self.orderLabel.frame.size = self.orderLabel.sizeThatFits(CGSize(width: 400, height: CGFloat.greatestFiniteMagnitude))
        self.orderLabel.frame.origin.x -= (self.orderLabel.frame.size.width - tempWidth)/2
    }
    
    //clear navigation and reset to drink choice
    @objc func submitOrder() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
