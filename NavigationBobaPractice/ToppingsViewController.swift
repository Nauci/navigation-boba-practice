//
//  ToppingsViewController.swift
//  NavigationBobaPractice
//
//  Created by Sophie on 2/11/18.
//  Copyright © 2018 Sophie Zhou. All rights reserved.
//

import UIKit

class ToppingsViewController: UIViewController {

    @IBOutlet weak var tapiocaImage: UIImageView!
    @IBOutlet weak var coconutImage: UIImageView!
    @IBOutlet weak var almondTofuImage: UIImageView!
    @IBOutlet weak var grassJellyImage: UIImageView!
    @IBOutlet weak var tapiocaButton: UIButton!
    @IBOutlet weak var coconutButton: UIButton!
    @IBOutlet weak var almondTofuButton: UIButton!
    @IBOutlet weak var grassJellyButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tapiocaImage.layer.cornerRadius = 8.0
        self.coconutImage.layer.cornerRadius = 8.0
        self.almondTofuImage.layer.cornerRadius = 8.0
        self.grassJellyImage.layer.cornerRadius = 8.0
        self.tapiocaImage.layer.borderColor = UIColor.lightGray.cgColor
        self.coconutImage.layer.borderColor = UIColor.lightGray.cgColor
        self.almondTofuImage.layer.borderColor = UIColor.lightGray.cgColor
        self.grassJellyImage.layer.borderColor = UIColor.lightGray.cgColor
        self.tapiocaImage.layer.borderWidth = 0.5
        self.coconutImage.layer.borderWidth = 0.5
        self.almondTofuImage.layer.borderWidth = 0.5
        self.grassJellyImage.layer.borderWidth = 0.5
        self.tapiocaImage.clipsToBounds = true
        self.coconutImage.clipsToBounds = true
        self.almondTofuImage.clipsToBounds = true
        self.grassJellyImage.clipsToBounds = true
    }

}
