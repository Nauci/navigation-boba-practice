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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.orderLabel.textColor = UIColor(white: 0.7, alpha: 1.0)
    }

}
