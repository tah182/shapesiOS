//
//  ShapeType.swift
//  ShapesGenerator
//
//  Created by Tah Tatsumoto on 11/6/14.
//  Copyright (c) 2014 Mad Hat Productions. All rights reserved.
//
public enum ShapeType : String {
    case CIRCLE     = "Circle";
    case TRIANGLE   = "Triangle";
    case SQUARE     = "Square";
    case PENTAGON   = "Pentagon";
    case HEXAGON    = "Hexagon";
    case OCTAGON    = "Octagon";
    case STAR       = "Star";
    
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

    var PTPDiameter : Bool {
        return InnerPointCount % 2 == 0;
    }
    
    var name : String {
        return self.rawValue;
    }
}