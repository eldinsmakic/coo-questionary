//
//  AnswerBool.swift
//  coo-questionary
//
//  Created by eldin smakic on 09/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import Foundation

/// Answer of type yes or no
class AnswerBool : Answer<String>
{
    override func canBeConverted(solution: String) -> Bool {
        if solution.isEmpty
        {
            return false
        }
        let solutionTrim = NSString(string: solution.trimmingCharacters(in: .whitespacesAndNewlines))
        let resultat = solutionTrim.replacingOccurrences(of: "[yes|no|YES|NO]", with: "", options: .regularExpression, range: NSRange(location: 0, length: solutionTrim.length))
        return resultat.isEmpty
    }
    
    
    override func convertToAnswer(solution: String) -> String
    {
        let resultat = solution.trimmingCharacters(in: .whitespacesAndNewlines)
        return resultat.lowercased()
    }
    
    override func isEqual(solution: String) -> Bool {
         return self.getAnswer() == self.convertToAnswer(solution: solution)
    }
}
