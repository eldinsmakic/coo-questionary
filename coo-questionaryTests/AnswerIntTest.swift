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

    func testIsGoodAnswer()
    {
        XCTAssertFalse(self.answer.isGoodAnswer(solution: "0"))
        XCTAssertFalse(self.answer.isGoodAnswer(solution: "test"))
        XCTAssertFalse(self.answer.isGoodAnswer(solution: "2"))
        XCTAssertTrue(self.answer.isGoodAnswer(solution: "5"))
        XCTAssertTrue(self.answer.isGoodAnswer(solution: " 5 "))

    }

}
