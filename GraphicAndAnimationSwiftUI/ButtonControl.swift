//
//  ButtonControl.swift
//  GraphicAndAnimationSwiftUI
//
//  Created by Игорь Сысоев on 22.01.2022.
//

import SwiftUI

struct ButtonControl: View {
    @Binding var posicion: CGFloat
    @Binding var enemyWidthPosicition: CGFloat
    @Binding var enemyHeightPosicin: CGFloat
    let typeButton: Bool
    let nameButton: String
    @Binding var contactShow: Bool
    
    var body: some View {
            Button(action: posicionListener) {
                Text(nameButton)
                    .frame(width: 150, height: 40)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
            }
            .offset(
                x: 0,
                y: UIScreen.main.bounds.height * 0.3
            )
    }
    
    private func posicionListener() {
        if typeButton {
            posicion -= 30
        } else {
            posicion += 30
        }
        contiguousListener()
    }
    
    private func contiguousListener() {
        let posicionOne = posicion - 1
        let posicionTwo = posicion + 1
        
        switch enemyHeightPosicin {
            case posicionOne...posicionTwo:
                contactShow.toggle()
            
        default:
            break
        }
        
        
        
    }
}

struct ButtonControl_Previews: PreviewProvider {
    static var previews: some View {
        ButtonControl(posicion: .constant(10), enemyWidthPosicition: .constant(20), enemyHeightPosicin: .constant(20), typeButton: true, nameButton: "back", contactShow: .constant(false))
    }
}
