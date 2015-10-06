//
//  GTToastAnimation.swift
//  Pods
//
//  Created by Grzegorz Tatarzyn on 05/10/2015.
//
//
public enum GTToastAnimation {
    case Alpha
    case BottomSlideIn
    
    internal func animations(view: UIView) -> (() -> Void, () -> Void) {
        var showAnimations = {}
        var hideAnimations = {}
        
        switch self{
        case .Alpha:
            showAnimations = { view.alpha = 1 }
            hideAnimations = { view.alpha = 0 }
        case .BottomSlideIn:
            showAnimations = { view.transform = CGAffineTransformIdentity }
            hideAnimations = { view.transform = CGAffineTransformMakeTranslation(0, view.frame.height + 20)}
        }
        
        return (showAnimations, hideAnimations)
    }
}