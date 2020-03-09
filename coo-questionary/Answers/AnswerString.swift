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
        return true
    }
    
}
