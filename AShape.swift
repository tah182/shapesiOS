//
//  AShape.swift
//  ShapesGenerator
//
//  Created by Tah Tatsumoto on 1/10/16.
//  Copyright © 2016 Mad Hat Productions. All rights reserved.
//

import Foundation
class AShape {
    var internalPoints      : [Point]
    var externalPoints      : [Point]
    var moveSpeed           : Int;
    var rotationSpeed       : Int;
    
    init() {
        self.moveSpeed = Int(arc4random_uniform(10)  + 1);
        self.rotationSpeed = Int(arc4random_uniform(10));
    }
    
    init(moveSpeed: Int, rotationSpeed: Int) {
        self.moveSpeed = moveSpeed;
        self.rotationSpeed = rotationSpeed;
    }
    
    func speedUp() {
        self.moveSpeed *= 2;
    }
    
    func slowDown() {
        self.moveSpeed /= 2;
    }
    
    /**
        The rotation of the shape
        - Return:  < 0 if the shape is rotating counter clockwise
                   > 0 if the shape is rotating clockwise
                     0 if the shape is not rotating
    */
    var Rotation : Int {
        get { return self.rotationSpeed; }
    }
    
    /**
        Reverses the rotation of the Shape
    */
    func reverse() {
        self.rotationSpeed *= -1;
    }
    
    func move() {
        
    }
}