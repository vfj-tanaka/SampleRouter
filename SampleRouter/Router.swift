//
//  Router.swift
//  SampleRouter
//
//  Created by mtanaka on 2022/09/07.
//

import Foundation
import UIKit

final class Router {
    
    static let shared: Router = .init()
    private init() {}
    
    private (set) var window: UIWindow?
    
    func showSample(from: UIViewController) {
        let vc = SampleViewController.makeFromStoryboard()
        show(from: from, next: vc)
    }
}

private extension Router {
    
    func show(from: UIViewController, next: UIViewController, animated: Bool = true) {
        if let nav = from.navigationController {
            nav.pushViewController(next, animated: animated)
        } else {
            from.present(next, animated: animated, completion: nil)
        }
    }
}

//public protocol Route {
//    func navigate(on navigationController: UINavigationController?)
//}
//
//public protocol Router {
//    associatedtype RouteType: Route
//    
//    var navigationController: UINavigationController? { get set }
//    
//    var presentationTransition: CATransition? { get set }
//    
//    init()
//    
//    init(navigationController: UINavigationController?, transition: CATransition)
//    
//    mutating func configure(navigationController: UINavigationController?, transition: CATransition)
//    
//    func navigate(to route: RouteType)
//    
//    func navigateBack()
//}
//
//public extension Router {
//    
//    init(navigationController: UINavigationController?, transition: CATransition) {
//        self.init()
//        configure(navigationController: navigationController, transition: transition)
//    }
//    
//    mutating func configure(navigationController: UINavigationController?, transition: CATransition) {
//        self.navigationController = navigationController
//        self.presentationTransition = transition
//        if transition.sourceController == nil {
//            transition.sourceController = navigationController
//        }
//    }
//    
//    func navigate(to route: RouteType) {
//        route.navigate(on: navigationController)
//    }
//    
//    func navigateBack() {
//        presentationTransition?.reverse()
//    }
//}
