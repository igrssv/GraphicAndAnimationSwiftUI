//
//  ButtonControl.swift
//  GraphicAndAnimationSwiftUI
//
//  Created by Игорь Сысоев on 22.01.2022.
//

import SwiftUI

struct ButtonControl: View {
    @Binding var posicionPerosnage: [CGFloat]
    @Binding var posicion: CGFloat
    @Binding var enemyPosicion: [CGFloat]
    @Binding var contactShow: Bool
    @Binding var typeButton: Bool
    @Binding var digressPosition: Double
    let nameButton: String
    
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
        switch nameButton {
        case "↑":
            posicion -= 30
            digressPosition = 90
            typeButton = false
            contiguousListener()
        case "←":
            posicion -= 30
            digressPosition = 0
            typeButton = false
            contiguousListener()
        case "→":
            posicion += 30
            digressPosition = 0
            typeButton = true
            contiguousListener()
        default:
            posicion += 30
            digressPosition = 280
            typeButton = false
            contiguousListener()
        }
        
        contiguousListener()
    }
    
    private func contiguousListener() {
        let lowPosicion = posicionPerosnage.map{$0 - 20}
        let maxPosicion = posicionPerosnage.map{$0 + 20}
        let enPos = enemyPosicion.first ?? 0
        let enPostwo = enemyPosicion.last ?? 0
        
        switch (enPos,enPostwo){
            case (
                lowPosicion[0]...maxPosicion[0],
                lowPosicion[1]...maxPosicion[1]):
                    contactShow.toggle()
                    newEnemyPoscicon()
            default:
                break
        }
    }
    
    private func newEnemyPoscicon() {
        enemyPosicion = [
            CGFloat.random(in: 50...UIScreen.main.bounds.width - 50),
            CGFloat.random(in: 20...UIScreen.main.bounds.height * 0.58)
            ]

        contactShow.toggle()
        
    }
}

struct ButtonControl_Previews: PreviewProvider {
    static var previews: some View {
        ButtonControl(
            posicionPerosnage:.constant([CGFloat(1)]),
            posicion: .constant(10),
            enemyPosicion: .constant([CGFloat(1)]),
            contactShow: .constant(false),
            typeButton: .constant(false),
            digressPosition: .constant(0.0),
            nameButton: "back"
            
        )
    }
}
