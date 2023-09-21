
//
//  ContentView.swift
//  code_history_app
//
//  Created by Rickey Johnson on 9/8/23.
//

import SwiftUI

// let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
// let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)

struct GameView: View {
    
    var question = Question(questionText: "What player is on the NBA logo?", possibleAnswer: ["Michael Jordan", "Magic Johnson", "Jerry West", "Oscar Robertson"], correctAnswerIndex: 2)
    
    @StateObject var viewModel = GameViewModel() // Updated
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.white)
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                           isActive: .constant(viewModel.gameIsOver),
                           label: { EmptyView() })
        )
        .navigationBarHidden(true)
        .environmentObject(viewModel) // any subviews to QuestionView will have access to the view model with EnvironmentObject property wrapper
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
