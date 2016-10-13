//
//  ViewController.swift
//  LayoutFun
//
//  Created by James Campagno on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    let redView = UIView(frame: CGRect.zero)
    let orangeView = UIView(frame: CGRect.zero)
    let yellowView = UIView(frame: CGRect.zero)
    let greenView = UIView(frame: CGRect.zero)
    let blueView = UIView(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        turnOffAutoResizingOnAllViews()
        setupTheConstraints()
        setupColors()
        self.view.addSubview(redView)
        self.view.addSubview(orangeView)
        self.view.addSubview(yellowView)
        self.view.addSubview(greenView)
        self.view.addSubview(blueView)
    }
    
}

// MARK: Constraints
extension ViewController {
    
    func setupTheConstraints() {

        // location and size the redView
        redView.widthAnchor.constraint(equalTo:     self.view.widthAnchor, multiplier: 0.5).isActive = true
        redView.heightAnchor.constraint(equalTo:    self.view.widthAnchor, multiplier: 0.5).isActive = true
        redView.centerXAnchor.constraint(equalTo:   self.view.centerXAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo:    self.view.bottomAnchor).isActive = true
        
        // location and size the orangeView
        orangeView.widthAnchor.constraint(equalTo:      redView.widthAnchor, multiplier: 0.75).isActive = true
        orangeView.heightAnchor.constraint(equalTo:     redView.widthAnchor, multiplier: 0.75).isActive = true
        orangeView.centerXAnchor.constraint(equalTo:    redView.centerXAnchor).isActive = true
        orangeView.bottomAnchor.constraint(equalTo:     redView.topAnchor).isActive = true
        
        // location and size the yellowView
        yellowView.widthAnchor.constraint(equalTo:      orangeView.widthAnchor, multiplier: 0.75).isActive = true
        yellowView.heightAnchor.constraint(equalTo:     orangeView.widthAnchor, multiplier: 0.75).isActive = true
        yellowView.centerXAnchor.constraint(equalTo:    orangeView.centerXAnchor).isActive = true
        yellowView.bottomAnchor.constraint(equalTo:     orangeView.topAnchor).isActive = true
        
        // location and size the greenView
        greenView.widthAnchor.constraint(equalTo:   yellowView.widthAnchor, multiplier: 0.75).isActive = true
        greenView.heightAnchor.constraint(equalTo:  yellowView.widthAnchor, multiplier: 0.75).isActive = true
        greenView.centerXAnchor.constraint(equalTo: yellowView.centerXAnchor).isActive = true
        greenView.bottomAnchor.constraint(equalTo:  yellowView.topAnchor).isActive = true
        
        // location and size the blueView
        blueView.widthAnchor.constraint(equalTo:    greenView.widthAnchor, multiplier: 0.75).isActive = true
        blueView.heightAnchor.constraint(equalTo:   greenView.widthAnchor, multiplier: 0.75).isActive = true
        blueView.centerXAnchor.constraint(equalTo:  greenView.centerXAnchor).isActive = true
        blueView.bottomAnchor.constraint(equalTo:   greenView.topAnchor).isActive = true
    }
    
    func turnOffAutoResizingOnAllViews() {
        [redView, orangeView, yellowView, greenView, blueView].forEach {
            colorView in colorView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(colorView)
        }
    }
    
}


// MARK: Setting up Views
extension ViewController {
    
    func setupColors() {
        redView.backgroundColor = UIColor.red
        orangeView.backgroundColor = UIColor.orange
        yellowView.backgroundColor = UIColor.yellow
        greenView.backgroundColor = UIColor.green
        blueView.backgroundColor = UIColor.blue
    }
}
