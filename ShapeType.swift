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
    
    var InnerPoints : Int {
        get { return self.getInnerPoints(); }
    }
    
    var OuterPoints : Int {
        get { return self.getOuterPoints(); }
    }
    
    var name : String {
        return self.rawValue;
    }
    
    func getInnerPoints() -> Int {
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
                return 0;
            case .STAR:
                return 5;
        }
    }
    
    func getOuterPoints() -> Int {
        switch self {
            case .CIRCLE:
                return 360;
            case .TRIANGLE:
                return 3;
            case .SQUARE:
                return 4;
            case .PENTAGON:
                return 5;
            case .HEXAGON:
                return 6;
            case .OCTAGON:
                return 8;
            case .STAR:
                return 5;
        }
    }
}