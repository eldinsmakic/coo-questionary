//
//  AnswerBoolTest.swift
//  coo-questionaryTests
//
//  Created by eldin smakic on 09/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import XCTest

@testable import coo_questionary

class AnswerBoolTest: AnswerTest<String>
{
    let SOLUTION = "yes"

    override func createAnswer() -> Answer<String> {
        return AnswerBool(answer: SOLUTION)
    }

    func testIsGoodType()
    {
        XCTAssertFalse(self.answer.isGoodType(solution: "efs"))
        XCTAssertFalse(self.answer.isGoodType(solution: ""))
        XCTAssertFalse(self.answer.isGoodType(solution: "1439"))
        XCTAssertFalse(self.answer.isGoodType(solution: " 11s "))
        XCTAssertTrue(self.answer.isGoodType(solution: " yes "))
        XCTAssertTrue(self.answer.isGoodType(solution: "yes"))
        XCTAssertTrue(self.answer.isGoodType(solution: " YES "))
        XCTAssertTrue(self.answer.isGoodType(solution: "YES"))
        XCTAssertTrue(self.answer.isGoodType(solution: " no "))
        XCTAssertTrue(self.answer.isGoodType(solution: "no"))
        XCTAssertTrue(self.answer.isGoodType(solution: " NO "))
        XCTAssertTrue(self.answer.isGoodType(solution: " no "))
    }

    func testIsGoodAnswer()
    {
        XCTAssertFalse(self.answer.isGoodAnswer(solution: " no "))
        XCTAssertFalse(self.answer.isGoodAnswer(solution: "NO"))
        XCTAssertTrue(self.answer.isGoodAnswer(solution: " " + self.SOLUTION + " "))
        XCTAssertTrue(self.answer.isGoodAnswer(solution: self.SOLUTION.capitalized))
        XCTAssertTrue(self.answer.isGoodAnswer(solution: " " + self.SOLUTION.capitalized + " "))
    }
}
