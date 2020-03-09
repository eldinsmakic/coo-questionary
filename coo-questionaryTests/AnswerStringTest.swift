//
//  AnswerString.swift
//  coo-questionary
//
//  Created by eldin smakic on 09/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import XCTest

@testable import coo_questionary


class AnswerStringTest : AnswerTest<String>
{
    let ANSWER = "SWIFT"
    
    override func createAnswer() -> Answer<String> {
        return AnswerString(answer: ANSWER)
    }
    
    
    func testIsGoodType()
       {
           XCTAssertFalse(self.answer.isGoodType(solution: "a"))
           XCTAssertFalse(self.answer.isGoodType(solution: "a1"))
           XCTAssertFalse(self.answer.isGoodType(solution: "deux"))
           XCTAssertFalse(self.answer.isGoodType(solution: "%"))
           XCTAssertTrue(self.answer.isGoodType(solution: "1"))
           XCTAssertTrue(self.answer.isGoodType(solution: "1993"))
           XCTAssertTrue(self.answer.isGoodType(solution: "0"))
           XCTAssertTrue(self.answer.isGoodType(solution: " 14 "))
       }
    
}
