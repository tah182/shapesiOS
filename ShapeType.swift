//
//  ShapeType.swift
//  ShapesGenerator
//
//  Created by Tah Tatsumoto on 11/6/14.
//  Copyright (c) 2014 Mad Hat Productions. All rights reserved.
//
import Foundation
public enum ShapeType : Int {
    case CIRCLE;
    case TRIANGLE;
    case SQUARE;
    case PENTAGON;
    case HEXAGON;
    case OCTAGON;
    case STAR;
    
    var name : String {
        let names : [String] = ["Circle", "Triangle", "Square", "Square", "Pentagon", "Hexagon", "Octagon", "Star"];
        return names[self.rawValue];
    }
    
    var OuterPointCount : Int {
        var outerPoints = 0;
        switch self {
            case .CIRCLE:
                outerPoints = 360;
            case .TRIANGLE:
                outerPoints = 3;
            case .SQUARE:
                outerPoints = 4;
            case .PENTAGON:
                outerPoints = 5;
            case .HEXAGON:
                outerPoints = 6;
            case .OCTAGON:
                outerPoints = 8;
            case .STAR:
                outerPoints = 5;
        }
        return outerPoints;
    }
    
    var InnerPointCount : Int {
        var innerPoints = 0;
        switch self {
            case .CIRCLE:
                fallthrough
            case .TRIANGLE:
                fallthrough
            case .SQUARE:
                fallthrough
            case .PENTAGON:
                fallthrough
            case .HEXAGON:
                fallthrough
            case .OCTAGON:
                innerPoints = 0;
            case .STAR:
                innerPoints = 5;
        }
        return innerPoints;

    }

    /** 
     Returns if the given shape has an even amount of vertices/points
    */
    var PTPDiameter : Bool {
        return InnerPointCount % 2 == 0;
    }
    
    private static let _count: ShapeType.RawValue = {
        // find the maximum enum value
        var maxValue: Int = 0;
        while let _ = ShapeType(rawValue: ++maxValue) { }
        return maxValue;
    }();
    
    static func Random() -> ShapeType {
        let rand = Int(arc4random_uniform(UInt32(_count)));
        return ShapeType(rawValue: rand)!;
    }
}