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
}
