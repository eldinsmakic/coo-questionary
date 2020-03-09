//
//  AnswerInt.swift
//  coo-questionary
//
//  Created by eldin smakic on 08/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import Foundation

/// Integer version of an Answer
class AnswerInt : Answer<Int>
{
    
    override func isGoodType(solution: String) -> Bool {
       return canBeConverted(solution: solution)
    }
    
    override func isGoodAnswer(solution: String) -> Bool {
        if (isGoodType(solution: solution))
        {
            return isEqual(solution: solution)
        }
        else
        {
            return false
        }
    }
    
    override func canBeConverted(solution:String) -> Bool
    {
        let x = Int(solution.trimmingCharacters(in: .whitespacesAndNewlines))
        return x != nil
    }
    
    override func convertToAnswer(solution:String) -> Int
    {
        return Int(solution.trimmingCharacters(in: .whitespacesAndNewlines))!
    }
    
    /// Check if s is Equal to Answer's solution
    /// - Parameter s: s potential solution
    override func isEqual(solution:String) -> Bool
    {
        return self.getAnswer() == self.convertToAnswer(solution: solution)
    }
}
