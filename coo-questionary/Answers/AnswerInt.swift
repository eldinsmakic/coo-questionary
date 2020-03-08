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
    
    override func isGoodType(s: String) -> Bool {
       print("HELLO")
       return canBeConverted(s: s)
    }
    
    override func isGoodAnswer(s: String) -> Bool {
        if (isGoodType(s: s))
        {
            return isEqual(s: s)
        }
        else
        {
            return false
        }
    }
    
    private func canBeConverted(s:String) -> Bool
    {
        let x = Int(s.trimmingCharacters(in: .whitespacesAndNewlines))
        return x != nil
    }
    
    private func convertToAnswer(s:String) -> Int
    {
        return Int(s.trimmingCharacters(in: .whitespacesAndNewlines))!
    }
    
    /// Check if s is Equal to Answer's solution
    /// - Parameter s: s potential solution
    private func isEqual(s:String) -> Bool
    {
        return self.getAnswer() == self.convertToAnswer(s: s)
    }
}
