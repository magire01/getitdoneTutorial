//
//  GDGradient.swift
//  getitdone
//
//  Created by Mark Gire on 2/28/22.
//

import UIKit

class GDGradient: UIView {
    
    var colors:[CGColor] = [
        UIColor.init(red: 100, green: 228, blue: 255, alpha: 1).cgColor,
        UIColor.init(red: 58, green: 123, blue: 213, alpha: 1).cgColor
    ]
    
    var hexColors:[CGColor] = [
        UIColor.blueZero.cgColor,
        UIColor.blueOne.cgColor
        
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = self.hexColors
            layer.locations = [0.0, 1.2]
        }
    }
    
    //#3A7BD5
    //#64E4FF
    
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
