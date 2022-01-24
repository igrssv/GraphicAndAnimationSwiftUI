//
//  GameView.swift
//  GraphicAndAnimationSwiftUI
//
//  Created by Игорь Сысоев on 22.01.2022.
//

import SwiftUI

struct GameView: View {
    @State private var posicion = [
        CGFloat.random(in: 50...UIScreen.main.bounds.width - 50),
        CGFloat(UIScreen.main.bounds.height * 0.6)
    ]
    @State private var enemyPosicion = [
        CGFloat.random(in: 50...UIScreen.main.bounds.width - 50),
        CGFloat.random(in: 20...UIScreen.main.bounds.height * 0.58)
    ]
    @State private var contactShow = false
    @State private var typeButton = false
    @State private var digressPosicion = 0.0
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                PackmanPage(mirrorPosicion: $typeButton)
                    .frame(width: 30, height: 30)
                    .foregroundColor(.orange)
                    .rotationEffect(.degrees(digressPosicion))
                    .offset(
                        x: posicion.first ?? 0,
                        y: posicion.last ?? 0
                    )
                    
                EnemyPage()
                    .frame(width: 30, height: 30)
                    .offset(
                        x: contactShow ? -50 : enemyPosicion.first ?? 0,
                        y: contactShow ? -10 : enemyPosicion.last ?? 0
                    )
            }
            .animation(.default)
            
            ButtonsControl(
                posicion: $posicion,
                enemyPosicion: $enemyPosicion,
                contactShow: $contactShow,
                typeButton: $typeButton,
                digressPosicion: $digressPosicion
            )
            
        }
        
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}


