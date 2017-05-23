//
//  ViewController.swift
//  HexColors
//
//  Created by Israel Manzo on 5/23/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewOne: UIView!
    
    @IBOutlet weak var viewTwo: UIView!
    
    @IBOutlet weak var viewThree: UIView!

    @IBOutlet weak var viewFour: UIView!
    
    @IBOutlet weak var viewFive: UIView!
    
    @IBOutlet weak var viewSix: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // We assing the hex extension value to any view in the viewdidLoad or viewWillAppear/DidAppear.
        // The hex value that is in characters 0x5g5hgh we enter it when the colorHexValue is called in a UIColor.
        // view.backgroundColor = UIColor(colorHexValue: 0x5b5e2c)
        
        setSubViews()
    }
    
    // MARK: - Setting the sub views.
    func setSubViews(){
        viewOne.layer.cornerRadius = 70
        viewTwo.layer.cornerRadius = 70
        viewThree.layer.cornerRadius = 70
        viewFour.layer.cornerRadius = 70
        viewFive.layer.cornerRadius = 70
        viewSix.layer.cornerRadius = 70
        
        viewOne.layer.borderWidth = 3
        viewOne.layer.borderColor = UIColor.black.cgColor
        
        viewTwo.layer.borderWidth = 3
        viewTwo.layer.borderColor = UIColor.black.cgColor

        viewThree.layer.borderWidth = 3
        viewThree.layer.borderColor = UIColor.black.cgColor

        viewFour.layer.borderWidth = 3
        viewFour.layer.borderColor = UIColor.black.cgColor

        viewFive.layer.borderWidth = 3
        viewFive.layer.borderColor = UIColor.black.cgColor

        viewSix.layer.borderWidth = 3
        viewSix.layer.borderColor = UIColor.black.cgColor

        viewOne.backgroundColor = UIColor(colorHexValue: 0x7f3d5c)
        viewTwo.backgroundColor = UIColor(colorHexValue: 0x9e2f63)
        viewThree.backgroundColor = UIColor(colorHexValue: 0x4f0a2a)
        viewFour.backgroundColor = UIColor(colorHexValue: 0x0a2c4f)
        viewFive.backgroundColor = UIColor(colorHexValue: 0x968d64)
        viewSix.backgroundColor = UIColor(colorHexValue: 0x0b363a)
    }

}

// MARK: - Extension for Hex Colors - The value of the Hex is and Integer - alpha is a CGFloat value default of 1.0 that increase or dicrease the opacity.
extension UIColor {
    convenience init(colorHexValue value: Int, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((value & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((value & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(value & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
}

