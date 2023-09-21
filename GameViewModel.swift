//
//  GameViewModel.swift
//  code_history_app
//
//  Created by Rickey Johnson on 9/19/23.
//

import SwiftUI


// emit events when changes are made to @Published property
class GameViewModel: ObservableObject {
    
    @Published private var game = Game() // GameViewModel notifies any observers when changes are made to this property (i.e. user makes guess)
    
    // returns current question
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    // returns current question # out of total questions
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    var gameIsOver: Bool {
        game.isOver
    }
    
    var correctGuesses: Int {
        game.guestCount.correct
    }
    
    var incorrectGuesses: Int {
        game.guestCount.incorrect
    }
    
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.main
        }
    }

}
