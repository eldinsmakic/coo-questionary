//
//  AnswerProtocol.swift
//  coo-questionary
//
//  Created by eldin smakic on 08/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import Foundation

/// General method of an Answer
protocol AnswerProtocol  {
    
    /// Tell if the solution s is the good type of solution
    /// for example if the answer is an int, s is tested to
    /// be an Int ( can be casted)
    func isGoodType( s : String) -> Bool

    ///  tell if s is equal to the answer
    func isGoodAnswer( s : String ) -> Bool

}
