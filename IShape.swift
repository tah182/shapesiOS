//
//  AbstractShape.swift
//  ShapesGenerator
//
//  Created by Tah Tatsumoto on 11/7/14.
//  Copyright (c) 2014 Mad Hat Productions. All rights reserved.
//

import Foundation
public protocol IShape {
    var InnerPointsArray : [Point] { get }
    
    var OuterPointsArray : [Point] { get }
    
    func speedUp() -> IShape;
    
    func slowDown() -> IShape;
    
    func spinFaster() -> IShape;
    
    func spinSlower() -> IShape;
    
    /**
     The rotation of the shape
     - Return:  < 0 if the shape is rotating counter clockwise
     > 0 if the shape is rotating clockwise
     0 if the shape is not rotating
     */
    var Rotation : Int { get }
    
    /**
     Reverses the rotation of the Shape
     */
    func reverse() -> IShape;
    
    func move() -> IShape;
    
    var Type : ShapeType { get }
    
    var Name : String { get }
    
    func isEqual(object: AnyObject?) -> Bool
}