//
//  Question.swift
//  code_history_app
//
//  Created by Rickey Johnson on 9/15/23.
//

import Foundation

struct Question: Hashable { // Add Hashable Conformance
    
    // implicit init() with these properties
    let questionText: String
    let possibleAnswer: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who invented the game of basketball?",
                possibleAnswer: [
                    "Larry O'Brian",
                    "Jerry West",
                    "Walter Camp",
                    "James Naismith"
                ],
                correctAnswerIndex: 3),
        Question(questionText: "Who is the all-time leading scorer?",
                possibleAnswer: [
                    "LeBron James",
                    "Kareem Adbul-Jabbar",
                    "Michael Jordan",
                    "Kobe Bryant"
                ],
                correctAnswerIndex: 0),
        Question(questionText: "What was the name for the Lakers in the 80s?",
                possibleAnswer: [
                    "Bad Boys",
                    "Showtime",
                    "Splash Bros",
                    "Celtics"
                ],
                correctAnswerIndex: 1),
        Question(questionText: "Who was the last person to average a triple double?",
                possibleAnswer: [
                    "Oscar Robertson",
                    "Jason Kidd",
                    "Magic Johnson",
                    "Russell Westbrook"
                ],
                correctAnswerIndex: 3),
        Question(questionText: "What is LeBron James' nickname?",
                possibleAnswer: [
                    "The Divine One",
                    "Prince James",
                    "King James",
                    "G.O.A.T."
                ],
                correctAnswerIndex: 2),
        Question(questionText: "What year did LeBron James win a championship for Cleveland?",
                possibleAnswer: [
                    "2013",
                    "2014",
                    "2016",
                    "2020"
                ],
                correctAnswerIndex: 2)
    ]
}
