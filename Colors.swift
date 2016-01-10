//
//  Colors.swift
//  ShapesGenerator
//
//  Created by Tah Tatsumoto on 11/6/14.
//  Copyright (c) 2014 Mad Hat Productions. All rights reserved.
//

import Foundation
enum Colors : String {
    case WHITE      = "#FFFFFF";
    case BLACK      = "#000000";
    case RED        = "#FF0000";
    case BLUE       = "#007DFF";
    case YELLOW     = "#FFFF00";
    case GREEN      = "#00FF00";
    case PURPLE     = "#7D00FF";
    case PINK       = "#FF00FF";
    case ORANGE     = "#FF7D00";
    case BROWN      = "#B85A00";
    
    var value : String {
        return self.rawValue;
    }
}