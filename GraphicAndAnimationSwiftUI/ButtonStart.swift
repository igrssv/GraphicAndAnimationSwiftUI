//
//  ButtonView.swift
//  GraphicAndAnimationSwiftUI
//
//  Created by Игорь Сысоев on 22.01.2022.
//

import SwiftUI

struct ButtonStart: View {
    @Binding var showButton: Bool
    let buttonName: String
    
    var body: some View {
        Button(action: show ) {
            Text(buttonName)
                .font(showButton ? .subheadline : .largeTitle)
                .frame(width: showButton ? 50: 200, height:showButton ? 30 : 40)
                .foregroundColor(.white)
                .background(showButton ? .red : .blue)
                .cornerRadius(10)
        }
        .offset(
            x: showButton ? UIScreen.main.bounds.width * 0.35 : 0,
            y: showButton ? UIScreen.main.bounds.height * -0.43 :
                UIScreen.main.bounds.height * 0.3
        )
        .animation(showButton ? .easeIn : .easeOut)
    }
    
    private func show() {
        showButton.toggle()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStart(showButton: .constant(false), buttonName: "Start")
    }
}
