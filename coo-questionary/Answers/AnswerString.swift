//
//  AnswerString.swift
//  coo-questionary
//
//  Created by eldin smakic on 09/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import Foundation

class AnswerString : Answer<String>
{
    override func canBeConverted(solution: String) -> Bool {
        let solutionTrim = NSString(string: solution.trimmingCharacters(in: .whitespacesAndNewlines))
        let resultat = solutionTrim.replacingOccurrences(of: "[a-zA-Z]", with: "", options: .regularExpression, range: NSRange(location: 0, length: solutionTrim.length))
        return resultat.isEmpty
    }
    
    
    override func convertToAnswer(solution: String) -> String
    {
        return solution.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    override func isEqual(solution: String) -> Bool {
         return self.getAnswer() == self.convertToAnswer(solution: solution)
    }
}
