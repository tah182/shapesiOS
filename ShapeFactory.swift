//
//  ShapeFactory.swift
//  ShapesGenerator
//
//  Created by Tah Tatsumoto on 1/9/16.
//  Copyright © 2016 Mad Hat Productions. All rights reserved.
//

import Foundation
public class ShapeFactory {
    public static func createRandShape() -> IShape {
        return AShape(type: ShapeType.Random());
    }
    
    public static func createShape(type: ShapeType) -> IShape {
        return AShape(type: type);
    }
    
    public static func createTriange() -> IShape {
        return createShape(ShapeType.TRIANGLE);
    }
    
    public static func createSquare() -> IShape {
        return createShape(ShapeType.SQUARE);
    }
    
    public static func createPentagon() -> IShape {
        return createShape(ShapeType.PENTAGON);
    }
    
    public static func createHexagon() -> IShape {
        return createShape(ShapeType.HEXAGON);
    }
    
    public static func createOctagon() -> IShape {
        return createShape(ShapeType.OCTAGON);
    }
    
    public static func createCircle() -> IShape {
        return createShape(ShapeType.CIRCLE);
    }
}