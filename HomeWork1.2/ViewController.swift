//
//  ViewController.swift
//  HomeWork1.2
//
//  Created by Nikita Neluybin on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    enum Lights {
        case red, yellow, green
    }
    var currentLight = Lights.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.setTitle("START", for: .normal)
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        switch currentLight {
        
        case .red:
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            currentLight = .yellow
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
            currentLight = .green
        case .green:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
            currentLight = .red
        }
    }
}

