//
//  ListController.swift
//  getitdone
//
//  Created by Mark Gire on 3/5/22.
//

import UIKit

class ListController: UIViewController {
    let header = GDHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(header)
        header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        header.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        header.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
}
