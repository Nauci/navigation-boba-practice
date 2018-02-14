//
//  DrinksViewController.swift
//  BaseExam
//
//  Created by Sophie Zhou on 9/19/17.
//  Copyright © 2017 Sophie Zhou. All rights reserved.
//

import UIKit

class DrinksViewController: UIViewController {

    @IBOutlet weak var milkTeaImage: UIImageView!
    @IBOutlet weak var jasmineTeaImage: UIImageView!
    @IBOutlet weak var matchaTeaImage: UIImageView!
    @IBOutlet weak var strawberryTeaImage: UIImageView!

    @IBOutlet weak var milkTeaButton: UIButton!
    @IBOutlet weak var jasmineTeaButton: UIButton!
    @IBOutlet weak var matchaTeaButton: UIButton!
    @IBOutlet weak var strawberryTeaButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.milkTeaImage.layer.cornerRadius = 8.0
        self.jasmineTeaImage.layer.cornerRadius = 8.0
        self.matchaTeaImage.layer.cornerRadius = 8.0
        self.strawberryTeaImage.layer.cornerRadius = 8.0
        self.milkTeaImage.clipsToBounds = true
        self.jasmineTeaImage.clipsToBounds = true
        self.matchaTeaImage.clipsToBounds = true
        self.strawberryTeaImage.clipsToBounds = true

        self.milkTeaButton.addTarget(self, action: #selector(milkTeaPressed), for: .touchUpInside)
    }

    @objc private func milkTeaPressed() {

    }

    @objc private func jasmineTeaPressed() {

    }

    @objc private func matchaTeaPressed() {

    }

    @objc private func strawberryTeaPressed() {

    }

}

