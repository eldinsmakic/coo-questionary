//
//  QuestionTest.swift
//  coo-questionaryTests
//
//  Created by eldin smakic on 08/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import XCTest


@testable import coo_questionary


class QuestionTest<T>: XCTestCase {
    
    
    
    func createAnswer() -> Answer<Any> {
        preconditionFailure("need Implementation in Subclasses")
    }
    
    
    let RIDDLE = "TEST"
    let POINT = 5
    var answer : Answer<Any>!
    var question : Question!

    private override init() {
        super.init()
    }
    
    override func setUp() {
        super.setUp()
        self.answer = self.createAnswer()
        self.question = Question(question: RIDDLE,point: POINT,answer: answer)
    }

    override func tearDown() {
        super.tearDown()
    }

    func testRiddle() {
        XCTAssertEqual(self.question.getRiddle() , RIDDLE)
    }
    
    func testPoint()
    {
        XCTAssertEqual(self.question.getPoint(), POINT)
    }
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
