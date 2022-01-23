//
//  ButtonsControl.swift
//  GraphicAndAnimationSwiftUI
//
//  Created by Игорь Сысоев on 23.01.2022.
//

import SwiftUI

struct ButtonsControl: View {
    @Binding var posicion: [CGFloat]
    @Binding var enemyPosicion: [CGFloat]
    @Binding var contactShow: Bool
    @Binding var typeButton: Bool
    @Binding var digressPosicion: Double
    
    var body: some View {
        VStack {
            ButtonControl(
                pos: $posicion,
                posicion: $posicion[1],
                enemyPosicion: $enemyPosicion,
                contactShow: $contactShow,
                typeButton: $typeButton,
                digressPosition: $digressPosicion,
                nameButton: "↑"
            )
            
            HStack {
                ButtonControl(
                    pos: $posicion,
                    posicion: $posicion[0],
                    enemyPosicion: $enemyPosicion,
                    contactShow: $contactShow,
                    typeButton: $typeButton,
                    digressPosition: $digressPosicion,
                    nameButton: "←"
                )
                ButtonControl(
                    pos: $posicion,
                    posicion: $posicion[0],
                    enemyPosicion: $enemyPosicion,
                    contactShow: $contactShow,
                    typeButton: $typeButton,
                    digressPosition: $digressPosicion,
                    nameButton: "→"
                )
            }
            
            ButtonControl(
                pos: $posicion,
                posicion: $posicion[1],
                enemyPosicion: $enemyPosicion,
                contactShow: $contactShow,
                typeButton: $typeButton,
                digressPosition: $digressPosicion,
                nameButton: "↓"
            )
        }
    }
}

struct ButtonsControl_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsControl(
            posicion: .constant([CGFloat(1)]),
            enemyPosicion: .constant([CGFloat(1)]),
            contactShow: .constant(false),
            typeButton: .constant(false),
            digressPosicion: .constant(0.0)
        )
    }
}
