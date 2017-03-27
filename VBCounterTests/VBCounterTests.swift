//
//  VBCounterTests.swift
//  VBCounterTests
//
//  Created by Ian McCallum on 3/25/17.
//  Copyright © 2017 com.jandm-design. All rights reserved.
//

import XCTest
@testable import VBCounter

class VBCounterTests: XCTestCase {
    
    var match: MatchModel!
    
    override func setUp() {

        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        match = MatchModel()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testThatAddPointsWorksForVisitor {
        match.addPoint("visitor")
        XCTAssert(match.visitorPoints == 1)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
