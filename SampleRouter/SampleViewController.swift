//
//  SampleViewController.swift
//  SampleRouter
//
//  Created by mtanaka on 2022/09/07.
//

import UIKit

final class SampleViewController: UIViewController {
    
    static func makeFromStoryboard() -> SampleViewController {
        let vc = UIStoryboard.sampleViewController
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
