//
//  AnswerString.swift
//  coo-questionary
//
//  Created by eldin smakic on 09/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import XCTest

@testable import coo_questionary

class AnswerStringTest: AnswerTest<String>
{
    let ANSWER = "SWIFT"

    override func createAnswer() -> Answer<String> {
        return AnswerString(answer: ANSWER)
    }

    func testIsGoodType()
       {
           XCTAssertFalse(self.answer.isGoodType(solution: "$ùa"))
           XCTAssertFalse(self.answer.isGoodType(solution: "124"))
           XCTAssertFalse(self.answer.isGoodType(solution: "$ù"))
           XCTAssertFalse(self.answer.isGoodType(solution: ""))
           XCTAssertFalse(self.answer.isGoodType(solution: "% "))
           XCTAssertFalse(self.answer.isGoodType(solution: " 1 "))
           XCTAssertTrue(self.answer.isGoodType(solution: "Hello"))
           XCTAssertTrue(self.answer.isGoodType(solution: "hello"))
           XCTAssertTrue(self.answer.isGoodType(solution: " youow "))
       }

    func testIsGoodAnswer()
    {
        XCTAssertFalse(self.answer.isGoodAnswer(solution: "Test" ))
        XCTAssertFalse(self.answer.isGoodAnswer(solution: "1234" ))
        XCTAssertFalse(self.answer.isGoodAnswer(solution: "yes" ))
        XCTAssertTrue(self.answer.isGoodAnswer(solution: ANSWER ))
    }

}
