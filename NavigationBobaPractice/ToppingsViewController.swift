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
    @IBOutlet weak var nextButton: UIButton!
    
    //Variables to track drink type, size, and toppings selections
    var drinkType = ""
    var drinkSize = ""
    var toppingsPicked: Set<String> = []
    
    //Custom init taking drink choice.
    init(tea drinkChoice: String, size drinkSizeChoice: String) {
        self.drinkType = drinkChoice
        self.drinkSize = drinkSizeChoice
        super.init(nibName: "ToppingsViewController", bundle: nil)
    }
    
    //required coder init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

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
        
        self.tapiocaButton.addTarget(self, action: #selector(toppingSelect), for: .touchUpInside)
        self.coconutButton.addTarget(self, action: #selector(toppingSelect), for: .touchUpInside)
        self.almondTofuButton.addTarget(self, action: #selector(toppingSelect), for: .touchUpInside)
        self.grassJellyButton.addTarget(self, action: #selector(toppingSelect), for: .touchUpInside)
        self.nextButton.addTarget(self, action: #selector(toppingSelect), for: .touchUpInside)
    }

    @objc func toppingSelect(button: UIButton) {
        
        //if NEXT is pressed, passes tea type, size, and selected toppings list to OrderViewController
        if button == nextButton {
            let orderView = OrderViewController(tea: self.drinkType, size: self.drinkSize, toppings: toppingsPicked)
            self.navigationController?.pushViewController(orderView, animated: true)
        }
        //Toggles on topping if not chose
        else if !button.isSelected {
            button.tintColor = UIColor.clear
            button.layer.borderColor = UIColor.green.cgColor
            button.layer.borderWidth = 1.0
            button.isSelected = true

            if button == tapiocaButton {
                toppingsPicked.insert("Tapioca")
            }
            else if button == coconutButton {
                toppingsPicked.insert("Coconut")
            }
            else if button == almondTofuButton {
                toppingsPicked.insert("Almond Tofu")
            }
            else if button == grassJellyButton {
                toppingsPicked.insert("Grass Jelly")
            }
        }
        //Toggles off topping if already chosen
        else if button.isSelected {
            button.isSelected = false
            button.layer.borderColor = UIColor.clear.cgColor
            button.layer.borderWidth = 0.0
            
            if button == tapiocaButton {
                toppingsPicked.remove("Tapioca")
            }
            else if button == coconutButton {
                toppingsPicked.remove("Coconut")
            }
            else if button == almondTofuButton {
                toppingsPicked.remove("Almond Tofu")
            }
            else if button == grassJellyButton {
                toppingsPicked.remove("Grass Jelly")
            }
        }
    }
}
