//
//  AnswerIntTest.swift
//  coo-questionaryTests
//
//  Created by eldin smakic on 08/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//


import XCTest

@testable import coo_questionary

class AnswerIntTest: AnswerTest<Int>

{
    let VALUE = 5
    
    override func createAnswer() -> Answer<Int> {
        return AnswerInt(answer: VALUE)
    }
       
   
    func testisGoodType()
    {
        XCTAssertFalse(self.answer.isGoodType(s: "a"))
        XCTAssertFalse(self.answer.isGoodType(s: "a1"))
        XCTAssertFalse(self.answer.isGoodType(s: "deux"))
        XCTAssertFalse(self.answer.isGoodType(s: "%"))
        XCTAssertTrue(self.answer.isGoodType(s: "1"))
        XCTAssertTrue(self.answer.isGoodType(s: "1993"))
        XCTAssertTrue(self.answer.isGoodType(s: "0"))
        XCTAssertTrue(self.answer.isGoodType(s: " 14 "))
    }
    
    func testIsGoodAnswer()
    {
        XCTAssertFalse(self.answer.isGoodAnswer(s: "0"))
        XCTAssertFalse(self.answer.isGoodAnswer(s: "test"))
        XCTAssertFalse(self.answer.isGoodAnswer(s: "2"))
        XCTAssertTrue(self.answer.isGoodAnswer(s: "5"))
        XCTAssertTrue(self.answer.isGoodAnswer(s: " 5 "))
        
    }
    
}
