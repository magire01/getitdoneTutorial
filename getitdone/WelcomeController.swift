//
//  ViewController.swift
//  getitdone
//
//  Created by Mark Gire on 2/28/22.
//

import UIKit

class WelcomeController: UIViewController {
    let bg:UIView = {
        let view = GDGradient()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 24
        return view
    }()
    let titleLabel = GDLabel(title: "Get It Done", size: 24, textAlign: .center, fontName: "Raleway-ExtraBold")
    let infoLabel = GDLabel(title: "Welcome to Get It Done. This is a To-Do list app. You have been warned.", size: 14, textAlign: .center)
    let copyrightLabel = GDLabel(title: "© Copyright 2022", color: .grayOne, size: 8, textAlign: .center)
   
    let nextButton = GDButton(title: "Next")
    
    @objc func handleNext() {
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.nextButton.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }) { (_) in
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                self.nextButton.transform = CGAffineTransform(scaleX: 1, y: 1)
            }) { (_) in
                self.present(ListController(), animated: true, completion: nil)
            }
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nextButton.addTarget((Any).self, action: #selector(self.handleNext), for: .touchUpInside)
        view.backgroundColor = .white

        view.addSubview(bg)
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
        view.addSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: bg.topAnchor, constant: 60).isActive = true
        
        bg.addSubview(infoLabel)
        infoLabel.numberOfLines = 2
        infoLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        infoLabel.centerYAnchor.constraint(equalTo: bg.centerYAnchor).isActive = true
        infoLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        infoLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
        bg.addSubview(nextButton)
        nextButton.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: bg.bottomAnchor, constant: -60).isActive = true
        
        
        view.addSubview(copyrightLabel)
        
        copyrightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        copyrightLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        copyrightLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        copyrightLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
    }
    

}

