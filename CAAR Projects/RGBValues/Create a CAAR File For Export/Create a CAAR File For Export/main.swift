//
//  main.swift
//  Create a CAAR File For Export
//
//  Created by Allan Nyholm Nielsen on 07/01/2019.
//  Copyright © 2019 Allan Nyholm Nielsen. All rights reserved.
//

import Cocoa
import AppKit
import CoreImage

// Create a simple layer

let layer = CAShapeLayer()

let rect = CGRect(x: 0, y: 0, width: 2560, height: 200)

layer.path = CGPath(roundedRect: rect, cornerWidth: 0, cornerHeight: 0, transform: nil)
layer.frame = rect

layer.fillColor = CGColor(red: 253/255.0, green: 253/255.0, blue: 253/255.0, alpha: 1.0) // sRGB

// Create dictionary required to comply with the CAAR format

let caar = ["rootLayer": layer]

do {
    // Use NSKeyedArchiver to "freeze-dry" the layer tree
    
    let data = try NSKeyedArchiver.archivedData(withRootObject: caar, requiringSecureCoding: false)
    
    // Write test CAAR file to the Documents directory
    
    let path = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true)[0]
    let url = URL(fileURLWithPath: "\(path)/MenubarThemeBg.caar")
    
    try data.write(to: url)
} catch {
    print(error)
}
