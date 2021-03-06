//
//  ShapesGeneratorTests.swift
//  ShapesGeneratorTests
//
//  Created by Tah Tatsumoto on 11/6/14.
//  Copyright (c) 2014 Mad Hat Productions. All rights reserved.
//

import UIKit
import XCTest
@testable import ShapesGenerator;

class TriangleShapesGeneratorTests : XCTestCase {
    let testName = "Triangle";
    let innerPointCount = 0;
    let outerPointCount = 3;
    let triangle : IShape = AShape(type: ShapeType.TRIANGLE);
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShapeRotation() {
        let rotation = triangle.Rotation;
        XCTAssertEqual(rotation, triangle.Rotation);
        
        triangle.reverse();
        XCTAssertEqual(rotation * -1, triangle.Rotation);
        
        triangle.spinFaster().spinFaster();
        XCTAssertEqual(rotation * -4, triangle.Rotation);
        
    }
    
    func testPointCount() {
        XCTAssertEqual(innerPointCount, triangle.InnerPointsArray.count);
        XCTAssertEqual(outerPointCount, triangle.OuterPointsArray.count);
    }
    
    func testShapePoints() {
        let zeroPointIndex : [Point] = [ Point(), Point(), Point() ];
        
        for _point in 0..<zeroPointIndex.count {
            XCTAssert(zeroPointIndex[_point].isEqual(triangle.OuterPointsArray[_point]));
        }
    }
    
    func testMove() {
        XCTFail("Not Implemented");
    }
    
    func testShapeName() {
        XCTAssertEqual(testName, triangle.Name);
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
