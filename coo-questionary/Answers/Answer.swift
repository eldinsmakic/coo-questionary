//
//  File.swift
//  coo-questionary
//
//  Created by eldin smakic on 08/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import Foundation

/// Class Answer is a solution to a Question
/// It can take many form, many type depending of the Question
/// the answer can be an integer, String, Bool.
public class Answer<T> : AnswerProtocol
{
  
    var solution:T!
    
    public init(answer : T)
    {
          self.solution = answer
    }
    
    public func getAnswer() -> T
    {
        return self.solution
    }
    
   
    func isGoodType(solution: String) -> Bool {
        return canBeConverted(solution: solution)
    }
    
 
    func isGoodAnswer(solution: String) -> Bool {
        return false
    }
    
    
    open func canBeConverted(solution:String) -> Bool
    {
        return false
    }
    
    open func convertToAnswer(solution:String) -> T
    {
        return self.getAnswer()
    }
    
    /// Check if s is Equal to Answer's solution
    /// - Parameter s: s potential solution
    open func isEqual(solution:String) -> Bool
    {
        return false
    }
    
}
