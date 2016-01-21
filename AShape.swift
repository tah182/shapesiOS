//
//  AShape.swift
//  ShapesGenerator
//
//  Created by Tah Tatsumoto on 1/10/16.
//  Copyright © 2016 Mad Hat Productions. All rights reserved.
//

import Foundation
public class AShape : NSObject, IShape {
    private let type                    : ShapeType;
    private var internalPoints          : [Point]!;
    private var externalPoints          : [Point]!;
    private var moveSpeed               : Int;
    private var rotationSpeed           : Int;
    private let diameter                : Int;
    
    public convenience init(type: ShapeType) {
        let moveSpeed = Int(arc4random_uniform(10) + 1);
        let rotationSpeed = Int(arc4random_uniform(10));
        
        self.init(type: type, moveSpeed: moveSpeed, rotationSpeed: rotationSpeed);
    }
    
    public convenience init(type: ShapeType, moveSpeed: Int, rotationSpeed: Int) {
        let pt = Point();
        self.init(type: type, moveSpeed: moveSpeed, rotationSpeed: rotationSpeed, initialPoint: pt);
    }
    
    public convenience init(type: ShapeType, moveSpeed: Int, rotationSpeed: Int, initialPoint: Point) {
        let d = Int(arc4random_uniform(50) + 10);
        self.init(type: type, moveSpeed: moveSpeed, rotationSpeed: rotationSpeed, initialPoint: Point(), diameter: d);
    }
    
    public init(type: ShapeType, moveSpeed: Int, rotationSpeed: Int, initialPoint: Point, diameter: Int) {
        
        self.moveSpeed = moveSpeed;
        self.rotationSpeed = rotationSpeed;
        self.type = type;
        self.diameter = diameter;
        
        super.init();
        self.externalPoints = createExternalPoints(initialPoint);
        self.internalPoints = createInternalPoints();
    }
    
    private func createExternalPoints(initialPoint: Point) -> [Point] {
        var points : [Point] = [Point]();
        for _ in 1..<type.OuterPointCount {
            // Must update
            points.append(Point());
        }
        return points;
    }
    
    private func createInternalPoints() -> [Point] {
        var points : [Point] = [Point]();
        for _ in 0..<type.InnerPointCount {
            // Must update;
            points.append(Point());
        }
        return points;
    }
    
    public var InnerPointsArray : [Point] {
        get { return self.internalPoints; }
    }
    
    public var OuterPointsArray : [Point] {
        get { return self.externalPoints; }
    }
    
    public func speedUp() -> IShape {
        self.moveSpeed *= 2;
        return self;
    }
    
    public func slowDown() -> IShape {
        self.moveSpeed /= 2;
        return self;
    }
    
    public func spinFaster() -> IShape {
        self.rotationSpeed *= 2;
        return self;
    }
    
    public func spinSlower() -> IShape {
        self.rotationSpeed /= 2;
        return self;
    }
    
    /**
        The rotation of the shape
        - Return:  < 0 if the shape is rotating counter clockwise
                   > 0 if the shape is rotating clockwise
                     0 if the shape is not rotating
    */
    public var Rotation : Int {
        get { return self.rotationSpeed; }
    }
    
    /**
        Reverses the rotation of the Shape
    */
    public func reverse() -> IShape {
        self.rotationSpeed *= -1;
        return self;
    }
    
    public func move() -> IShape {
        
        return self;
    }
    
    public var Type : ShapeType {
        get { return self.type; }
    }
    
    public var Name : String {
        get { return self.type.name; }
    }
    
    override public func isEqual(object: AnyObject?) -> Bool {
        if object is AShape {
            return self.type.name == (object as! ShapeType).name;
        } else { return false; }
    }
}