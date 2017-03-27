//
//  SlideOutAnimationController.swift
//  StoreSearch
//
//  Created by liudong on 2017/3/27.
//  Copyright © 2017年 Razeware. All rights reserved.
//

import UIKit

class SlideOutAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        if let fromView = transitionContext.view(forKey: UITransitionContextViewKey.to) {
            let containerView = transitionContext.containerView
            let duration = transitionDuration(using: transitionContext)
            
            UIView.animate(withDuration: duration, animations: { 
                fromView.center.y -= containerView.bounds.size.height
                fromView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                
            }, completion: { (finished) in
                transitionContext.completeTransition(finished)
            })
        }
    }

}
