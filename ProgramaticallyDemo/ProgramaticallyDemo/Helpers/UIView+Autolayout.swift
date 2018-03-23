//
//  UIView+Autolayout.swift
//  ProgramaticallyDemo
//
//  Created by projas on 3/22/18.
//  Copyright © 2018 Nearsoft. All rights reserved.
//


import UIKit

enum CenterMode {
  case horizontally
  case vertically
}

extension UIView {
  
  func fillSuperview(padding: UIEdgeInsets = .zero) {
    anchor(top: superview?.topAnchor, leading: superview?.leadingAnchor, bottom: superview?.bottomAnchor, trailing: superview?.trailingAnchor, padding: padding)
  }
  
  func center(to view: UIView, mode: CenterMode, size: CGSize = .zero) {
    translatesAutoresizingMaskIntoConstraints = false
    
    if mode == .horizontally {
      centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    } else {
      centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    if size.width != 0 {
      widthAnchor.constraint(equalToConstant: size.width).isActive = true
    }
    
    if size.height != 0 {
      heightAnchor.constraint(equalToConstant: size.height).isActive = true
    }
    
  }
  
  func anchorSize(to view: UIView) {
    translatesAutoresizingMaskIntoConstraints = false
    
    widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
  }
  
  func anchorSize(size: CGSize) {
    translatesAutoresizingMaskIntoConstraints = false
    
    widthAnchor.constraint(equalToConstant: size.width).isActive = true
    heightAnchor.constraint(equalToConstant: size.width).isActive = true
    
  }
  
  /**
   Set the aspect ratio for view. Default is 1:1 (1.0)
   
   @param ratio percentage ratio. For 5:1 use 1.0/5.0
   */
  func aspectRatio(ratio: CGFloat = 1.0) {
    translatesAutoresizingMaskIntoConstraints = false
    
    heightAnchor.constraint(equalTo: widthAnchor, multiplier: ratio)
    widthAnchor.constraint(equalTo: heightAnchor, multiplier: ratio)
  }
  
  func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
    translatesAutoresizingMaskIntoConstraints = false
    
    if let top = top {
      topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
    }
    
    if let leading = leading {
      leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
    }
    
    if let bottom = bottom {
      bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
    }
    
    if let trailing = trailing {
      trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
    }
    
    if size.width != 0 {
      widthAnchor.constraint(equalToConstant: size.width).isActive = true
    }
    
    if size.height != 0 {
      heightAnchor.constraint(equalToConstant: size.height).isActive = true
    }
  }
}

