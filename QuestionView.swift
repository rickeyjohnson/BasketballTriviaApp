//
//  QuestionView.swift
//  code_history_app
//
//  Created by Rickey Johnson on 9/19/23.
//

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText) // displays the question
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
                .padding()
            Spacer()
            ForEach(0..<question.possibleAnswer.count) { answerIndex in
                Button(action: {
                    
                    print("Tapped on option with the text: \(question.possibleAnswer[answerIndex])")
                    viewModel.makeGuess(atIndex: answerIndex)

                }, label: {
                    ChoiceTextView(choiceText: question.possibleAnswer[answerIndex])
                        .background(viewModel.color(forOptionIndex: answerIndex))
                })
                .disabled(viewModel.guessWasMade)
            }
        }
        
        if viewModel.guessWasMade {
            Button(action: { viewModel.displayNextScreen() }) {
                BottomTextView(str: "Next")
            }
        }
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
