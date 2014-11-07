//
//  AbstractShape.swift
//  ShapesGenerator
//
//  Created by Tah Tatsumoto on 11/7/14.
//  Copyright (c) 2014 Mad Hat Productions. All rights reserved.
//

import Foundation
protocol AbstractShape {
    var rotationSpeed       : Int { get }
    var clockwiseRotation   : Bool { get }
    var radiusLength        : Int { get }
//    var shapeType           : ShapeType { get }
//    var path                : LinearVector { get }
}