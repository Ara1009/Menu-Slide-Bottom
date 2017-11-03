//
//  ViewController.swift
//  thirdproject
//
//  Created by Aravind Subramanian on 11/3/17.
//  Copyright © 2017 Aravind Subramanian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MenuView: UIView!
    @IBOutlet weak var DarkCircle: MenuDesign!
    @IBOutlet weak var MenuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func MenuToggle(_ sender: UIButton) {
        
        if DarkCircle.transform == .identity {
            UIView.animate(withDuration:1, animations:{
                self.DarkCircle.transform = CGAffineTransform(scaleX: 11, y: 11)
                self.MenuView.transform = CGAffineTransform(translationX: 0, y: -65)
                self.MenuButton.transform = CGAffineTransform(rotationAngle: self.radians(degrees: 180))
            }) { (true) in
            }
        } else {
            UIView.animate(withDuration:1, animations:{
                self.DarkCircle.transform = .identity
                self.MenuView.transform = .identity
                self.MenuButton.transform = .identity
            }) { (true) in
            }
        }
    }
    
    
    func radians(  degrees: Double) -> CGFloat{
        return CGFloat(degrees * .pi / degrees)
    }
}
