//
//  ViewController.swift
//  SampleRouter
//
//  Created by mtanaka on 2022/09/07.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func goToSampleVC(_ sender: Any) {
        
        Router.shared.showSample(from: self)
    }
}

