//
//  Question.swift
//  coo-questionary
//
//  Created by eldin smakic on 08/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import Foundation

/// A question is a riddle with an answer to it
/// and some point if it the correct answer
class Question 
{
    private let riddle : String
    private let point : Int
    private let answer : Answer<Any>
    
    init(question riddle : String, point : Int , answer : Answer<Any> ) {
        self.riddle = riddle
        self.point = point
        self.answer = answer
    }
    
    /// Return the riddle
    func getRiddle() -> String
    {
        return self.riddle
    }
    
    ///  Return number of point
    /// if good answer
    func getPoint() -> Int
    {
        return self.point
    }
    
    /// Return the answer
    func getAnswer() -> Answer<Any>
    {
        return self.answer
    }
    
}
