//
//  MenuDesign.swift
//  thirdproject
//
//  Created by Aravind Subramanian on 11/3/17.
//  Copyright © 2017 Aravind Subramanian. All rights reserved.
//

import UIKit

@IBDesignable class MenuDesign: UIView {
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    
   
}
