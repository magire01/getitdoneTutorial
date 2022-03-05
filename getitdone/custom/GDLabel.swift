//
//  GDLabel.swift
//  getitdone
//
//  Created by Mark Gire on 2/28/22.
//

import UIKit

class GDLabel: UILabel {
    
    init(title: String = "default string", frame:CGRect = .zero, color:UIColor = .white, size: CGFloat = 16, textAlign: NSTextAlignment = .left, fontName: String = "Raleway-VariableFont_wght" ){
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.text = title
        self.textColor = color
        self.font = UIFont.init(name: fontName, size: size)
        //self.font = UIFont.init(name: "Raleway-VariableFont_wght", size: size)
        self.textAlignment = textAlign
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
