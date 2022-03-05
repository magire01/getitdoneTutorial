//
//  GDHeaderView.swift
//  getitdone
//
//  Created by Mark Gire on 3/5/22.
//

import UIKit

class GDHeaderView: UIView {
    let bg = GDGradient()
    let titleLabel = GDLabel(size: 14)
    let subtitleLabel = GDLabel(size: 24)
    
    init(frame:CGRect = .zero, title:String = "Header Title", subtitle:String = "Header Subtitle") {
        super.init(frame: frame)
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
        self.titleLabel.text = title
        self.subtitleLabel.text = subtitle
        setupLayout()
    }
    
    func setupLayout() {
        addSubview(bg)
        bg.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bg.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        bg.topAnchor.constraint(equalTo: topAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20 + 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        subtitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20 + 8).isActive = true
        subtitleLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
