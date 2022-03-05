//
//  GDHeaderView.swift
//  getitdone
//
//  Created by Mark Gire on 3/5/22.
//

import UIKit

class GDHeaderView: UIView {
    init(frame:CGRect = .zero, title:String = "Header Title", subtitle:String = "Header Subtitle") {
        super.init(frame: frame)
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
