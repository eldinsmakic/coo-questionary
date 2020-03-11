//
//  Questionary.swift
//  coo-questionary
//
//  Created by eldin smakic on 11/03/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//

import Foundation

/// Questionary represent  a list of question
class Questionary {
    private var questions: [Question]
    private var score: Int

    init()
    {
        self.questions = [Question]()
        self.score = 0
    }

    /// Return all questions
    func getAllQuestions() -> [Question]
    {
        return self.questions
    }

    /// add a qestion to the questionary
    func addQuestion(question: Question)
    {
        self.questions.append(question)
    }

    /// return number of question in questionary
    func getNbQuestion() -> Int
    {
        return self.questions.count
    }

}
