//
//  UIStoryboard+.swift
//  SampleRouter
//
//  Created by mtanaka on 2022/09/08.
//

import UIKit

extension UIStoryboard {
    
    static var sampleViewController: SampleViewController {
        UIStoryboard.init(name: "Sample", bundle: nil).instantiateInitialViewController() as! SampleViewController
    }
}
