//
//  AnswerTest.swift
//  coo-questionaryTests
//
//  Created by eldin smakic on 08/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import XCTest

@testable import coo_questionary

class AnswerTest<T: Equatable>: XCTestCase {

    var answer: Answer<T>!

    func createAnswer() -> Answer<T>
    {
        preconditionFailure("need Implementation in Subclasses")
    }

    override func setUp() {
        self.answer = createAnswer()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetAnswer()
    {
           XCTAssertEqual(self.answer.getAnswer(), self.createAnswer().getAnswer())
    }

}
