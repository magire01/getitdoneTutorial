//
//  GDButton.swift
//  getitdone
//
//  Created by Mark Gire on 3/5/22.
//

import UIKit

class GDButton:UIButton {
    
    var title:String!
    
    init(title:String = "Button Text", frame:CGRect = .zero) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.title = title
        self.phaseTwo()
    }
    
    func phaseTwo() {
        self.setTitle(self.title, for: .normal)
        self.setTitleColor(.grayZero, for: .normal)
        self.layer.cornerRadius = 20
        self.backgroundColor = .white
        if self.titleLabel != nil {
            titleLabel?.font = UIFont(name: "Raleway-ExtraBold", size: 16)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
