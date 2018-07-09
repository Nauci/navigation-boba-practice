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

        self.milkTeaButton.addTarget(self, action: #selector(teaPressed), for: .touchUpInside)
        self.jasmineTeaButton.addTarget(self, action: #selector(teaPressed), for: .touchUpInside)
        self.matchaTeaButton.addTarget(self, action: #selector(teaPressed), for: .touchUpInside)
        self.strawberryTeaButton.addTarget(self, action: #selector(teaPressed), for: .touchUpInside)
    }

    @objc private func teaPressed(button: UIButton) {
        
        var type = ""
        
        if button == milkTeaButton {
            type = "Milk Tea"
        }
        else if button == jasmineTeaButton {
            type = "Jasmine Tea"
        }
        else if button == matchaTeaButton {
            type = "Matcha Tea"
        }
        else if button == strawberryTeaButton {
            type = "Strawberry Tea"
        }
        
        let sizeView = SizeViewController(tea: type)
        self.navigationController?.pushViewController(sizeView, animated: true)
    }
//
//
//    @objc private func milkTeaPressed() {
//        let sizeView = SizeViewController()
//        self.navigationController?.pushViewController(sizeView, animated: true)
//    }
//
//    @objc private func jasmineTeaPressed() {
//        let sizeView = SizeViewController()
//        self.navigationController?.pushViewController(sizeView, animated: true)
//    }
//
//    @objc private func matchaTeaPressed() {
//        let sizeView = SizeViewController()
//        self.navigationController?.pushViewController(sizeView, animated: true)
//    }
//
//    @objc private func strawberryTeaPressed() {
//        let sizeView = SizeViewController()
//        self.navigationController?.pushViewController(sizeView, animated: true)
//    }
}

