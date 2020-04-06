//
//  main.swift
//  Create a Gradient CAAR File For Export
//
//  Created by Allan Nyholm Nielsen on 05/04/2020.
//  Copyright © 2020 Allan Nyholm Nielsen. All rights reserved.
//

import Cocoa
import AppKit
import CoreImage

// Create a simple layer

let layer = CAShapeLayer()

let rect = CGRect(x: 0, y: 0, width: 2560, height: 90)

layer.path = CGPath(roundedRect: rect, cornerWidth: 0, cornerHeight: 0, transform: nil)
layer.frame = rect

layer.fillColor = NSColor.systemBlue.cgColor


// Add a gradient to existing layer above

let gradient = CAGradientLayer()
gradient.startPoint = CGPoint(x: 0.5, y: 0)
gradient.endPoint = CGPoint(x: 0.5, y: 1.0)
gradient.frame = CGRect(x: 1, y: 0.5, width: 2560, height: 90)
gradient.colors = [
    NSColor(white: 1, alpha: 0.7).cgColor,
    NSColor(white: 1, alpha: 0.5).cgColor,
]
gradient.locations = [
    0.0,
    1.0
    
]
layer.mask = gradient

// Create dictionary required to comply with the CAAR format

let caar = ["rootLayer": layer]

do {
    // Use NSKeyedArchiver to "freeze-dry" the layer tree
    
    let data = try NSKeyedArchiver.archivedData(withRootObject: caar, requiringSecureCoding: false)
    
    // Write test CAAR file to the Documents directory
    
    let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
    let url = URL(fileURLWithPath: "\(path)/GradientBG_test.caar")
    
    try data.write(to: url)
} catch {
    print(error)
}
