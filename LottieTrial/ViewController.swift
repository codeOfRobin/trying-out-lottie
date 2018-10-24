//
//  ViewController.swift
//  LottieTrial
//
//  Created by Robin Malhotra on 24/10/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    let animationView = LOTAnimationView(name: "playstoploop")

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(animationView)
        animationView.play { (finished) in
            print(finished)
        }
        animationView.backgroundColor = .black

//        animationView.autoReverseAnimation = true
        animationView.loopAnimation = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidLayoutSubviews() {
        self.animationView.frame = CGRect(x: view.bounds.width/2 - 50, y: view.bounds.height/2 - 50, width: 100, height: 100)
    }


}

