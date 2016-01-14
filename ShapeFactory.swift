//
//  ShapeFactory.swift
//  ShapesGenerator
//
//  Created by Tah Tatsumoto on 1/9/16.
//  Copyright © 2016 Mad Hat Productions. All rights reserved.
//

import Foundation
class ShapeFactory {
    func createShape(type: ShapeType) throws -> IShape {
        throw ValidationException.UnimplementedException;
    }
}