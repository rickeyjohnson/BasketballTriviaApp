//
//  ChoiceTextView.swift
//  code_history_app
//
//  Created by Rickey Johnson on 9/15/23.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding(30)
            .frame(maxWidth: 325)
            .border(accentColor, width: 4)
    }
}

struct ChoiceTextView_Preview: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
