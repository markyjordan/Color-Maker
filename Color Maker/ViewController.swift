//
//  ViewController.swift
//  Color Maker
//
//  Created by Marky Jordan on 3/22/20.
//  Copyright © 2020 Marky Jordan. All rights reserved.
//

import UIKit

// MARK: ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set a colorView on launch
        changeColorComponent()
        
    }

    // MARK: Actions
    
    @IBAction func changeColorComponent() {
        
        let r: CGFloat = CGFloat(self.redSlider!.value)
        let g: CGFloat = CGFloat(self.greenSlider!.value)
        let b: CGFloat = CGFloat(self.blueSlider!.value)
        
        colorView.backgroundColor = UIColor(displayP3Red: r, green: g, blue: b, alpha: 1)
    }
}
