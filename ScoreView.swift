//
//  ScoreView.swift
//  code_history_app
//
//  Created by Rickey Johnson on 9/19/23.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 70))
                    .bold()
                    .padding()
                Spacer()
                Text("\(viewModel.correctGuesses)✅")
                    .font(.system(size: 30))
                Text("\(viewModel.incorrectGuesses)❌")
                    .font(.system(size: 30))
                Spacer()
                NavigationLink(destination: WelcomeView(),
                               label: {BottomTextView(str: "Re-take Quiz")
                })
                
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
