//
//  ScoreViewModel.swift
//  code_history_app
//
//  Created by Rickey Johnson on 9/19/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
