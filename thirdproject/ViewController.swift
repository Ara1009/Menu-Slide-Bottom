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
    
    @IBOutlet weak var FacebookButton: UIButton!
    @IBOutlet weak var LinkedInButton: UIButton!
    @IBOutlet weak var TwitterButton: UIButton!
    @IBOutlet weak var SnapchatButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FacebookButton.alpha = 0
        LinkedInButton.alpha = 0
        TwitterButton.alpha = 0
        SnapchatButton.alpha = 0
        
    }
    @IBAction func MenuToggle(_ sender: UIButton) {
        
        if DarkCircle.transform == .identity {
            UIView.animate(withDuration:1, animations:{
                self.DarkCircle.transform = CGAffineTransform(scaleX: 11, y: 11)
                self.MenuView.transform = CGAffineTransform(translationX: 0, y: -65)
                self.MenuButton.transform = CGAffineTransform(rotationAngle: self.radians(degrees: 180))
            }) { (true) in
                UIView.animate(withDuration: 0.5, animations: {
                    
                self.toggleButtons()
                })
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
    
    func toggleButtons() {
        let alpha = CGFloat(FacebookButton.alpha == 0 ? 1 : 1)
        FacebookButton.alpha = alpha
        LinkedInButton.alpha = alpha
        TwitterButton.alpha = alpha
        SnapchatButton.alpha = alpha
        
    }
    
    func radians(  degrees: Double) -> CGFloat{
        return CGFloat(degrees * .pi / degrees)
    }
}
