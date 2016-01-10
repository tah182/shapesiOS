//
//  Point.swift
//  ShapesGenerator
//
//  A Point on an {x, y} coordinate plane
//
//  Created by Tah Tatsumoto on 1/9/16.
//  Copyright © 2016 Mad Hat Productions. All rights reserved.
//

import Foundation
struct Point {
    var x : Double;
    var y : Double;
    
    /**
     Constructor for the Point structure
     - x: the original x position for the object
     - y: the original y position for the object
     */
    init(x : Double, y : Double) {
        self.x = x;
        self.y = y;
    }
    
    /**
     Empty Constructor setting the point to 0,0
     */
    init() {
        self.x = 0.0;
        self.y = 0.0;
    }
    
    /**
        Moves the point horizontally along the x-axis
        - x: if x < 0, the point will move to the left, 
             if x > 0, the point will move to the right
    */
    mutating func moveHorizontal(x : Double) {
        self.x += x;
    }
    
    mutating func moveVertical(y : Double) {
        self.y += x;
    }
    
    mutating func moveLeft(x : Double) {
        moveHorizontal(abs(x) * -1);
    }
    
    mutating func moveRight(x : Double) {
        moveHorizontal(abs(x));
    }
    
    mutating func moveUp(y : Double) {
        moveVertical(abs(y));
    }
    
    mutating func moveDown(y : Double) {
        moveVertical(abs(y) * -1);
    }

    var X : Double {
        get { return self.x; }
    }
    
    var Y : Double {
        get { return self.y; }
    }
}