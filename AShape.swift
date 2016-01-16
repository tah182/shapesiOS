//
//  AShape.swift
//  ShapesGenerator
//
//  Created by Tah Tatsumoto on 1/10/16.
//  Copyright © 2016 Mad Hat Productions. All rights reserved.
//

import Foundation
public class AShape : NSObject {
    private let type                    : ShapeType;
    private var internalPoints          : [Point];
    private var externalPoints          : [Point];
    private var moveSpeed               : Int;
    private var rotationSpeed           : Int;
    
    public convenience init(type: ShapeType) {
        let moveSpeed = Int(arc4random_uniform(10) + 1);
        let rotationSpeed = Int(arc4random_uniform(10));
        
        self.init(type: type, moveSpeed: moveSpeed, rotationSpeed: rotationSpeed);
    }
    
    public init(type: ShapeType, moveSpeed: Int, rotationSpeed: Int) {
        self.externalPoints = [Point]();
        self.internalPoints = [Point]();
        
        self.moveSpeed = moveSpeed;
        self.rotationSpeed = rotationSpeed;
        self.type = type;
        
        for _ in 0..<type.InnerPointCount {
            self.internalPoints.append(Point());
        }
        
        for _ in 0..<type.OuterPointCount {
            self.externalPoints.append(Point());
        }
    }
    
    public func speedUp() -> AShape {
        self.moveSpeed *= 2;
        return self;
    }
    
    public func slowDown() -> AShape {
        self.moveSpeed /= 2;
        return self;
    }
    
    public func spinFaster() -> AShape {
        self.rotationSpeed *= 2;
        return self;
    }
    
    public func spinSlower() -> AShape {
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
    public func reverse() {
        self.rotationSpeed *= -1;
    }
    
    public func move() {
        
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