//
//  CarTests.swift
//  UnitTestsTests
//
//  Created by user on 05/02/2019.
//  Copyright © 2019 Vinícius Cano Santos. All rights reserved.
//

import XCTest
@testable import UnitTests

class CarTests: XCTestCase {
    
    var ferrari: Car!
    var jeep: Car!
    var honda: Car!
    
    override func setUp() {
        super.setUp()
        
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
    }
    
    override func tearDown() {
        super.tearDown()
        
        ferrari = nil
        jeep = nil
        honda = nil
    }
    
    func testSportFasterThanOffRoad(){
        
        let minutes = 60
        
        ferrari.start(minutes: minutes)
        jeep.start(minutes: minutes)
        
        XCTAssertTrue(ferrari.miles > jeep.miles)
    }
    
    func testOffRoadFasterThanEconomy(){
        let minutes = 60
        
        jeep.start(minutes: minutes)
        honda.start(minutes: minutes)
        
        XCTAssertTrue(jeep.miles > honda.miles)
    }
    
    
    
}
