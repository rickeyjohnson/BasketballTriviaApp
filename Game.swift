//
//  Game.swift
//  code_history_app
//
//  Created by Rickey Johnson on 9/16/23.
//

import Foundation

struct Game {
    private(set) var guesses = [Question: Int] () // can be read but not written from outside structure
    private(set) var currentQuestionIndex = 0
    private(set) var isOver = false
    private let questions = Question.allQuestions.shuffled()
    
    var numberOfQuestions: Int {
        questions.count
    }
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    var guestCount: (correct: Int, incorrect: Int) {        // returns the number of guesses correct and incorrect for each question
        var count: (correct: Int, incorrect: Int) = (0,0)   // sets count tuple initially to (0,0)
        for (question, guessedIndex) in guesses {           // iterates through guesses dict which consist of a question and index the user guessed
            if question.correctAnswerIndex == guessedIndex {    // updates tuples incorrect or correct "column" if guessIndex == question.correctanswerIndex
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count        // returns a tuple cotaining the total number of correct guesses and the number of incorrect guesses
    }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index    // sets the index the user guess to dictionary of questions and guessed indexes
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
