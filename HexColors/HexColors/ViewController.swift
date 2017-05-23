//
//  ViewController.swift
//  HexColors
//
//  Created by Israel Manzo on 5/23/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // We assing the hex extension value to any view in the viewdidLoad or viewWillAppear/DidAppear.
        // The hex value that is in characters 0x5g5hgh we enter it when the colorHexValue is called in a UIColor.
        view.backgroundColor = UIColor(colorHexValue: 0x5b5e2c)
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

