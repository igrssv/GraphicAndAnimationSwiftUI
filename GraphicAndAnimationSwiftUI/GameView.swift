//
//  GameView.swift
//  GraphicAndAnimationSwiftUI
//
//  Created by Игорь Сысоев on 22.01.2022.
//

import SwiftUI

struct GameView: View {
    @State private var witdthPosicion = CGFloat.random(
        in: 50...UIScreen.main.bounds.width - 50
    )
    @State private var heightPosicion = CGFloat(
        UIScreen.main.bounds.height * 0.6
    )
    
    @State private var npsWitdthPosicion = CGFloat.random(
        in: 50...UIScreen.main.bounds.width - 50
    )
    @State private var npsHeightPosicion = CGFloat.random(
        in: 20...UIScreen.main.bounds.height * 0.58
    )
    
    @State private var contactShow = false
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.orange)
                    .offset(
                        x: witdthPosicion,
                        y: heightPosicion
                    )
                
                Rectangle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.red)
                    .offset(
                        x: contactShow ? 0 : npsWitdthPosicion,
                        y: contactShow ? 0 : npsHeightPosicion
                    )
                    
                    
                
            }
            .animation(.default)
            
            VStack {
                ButtonControl(posicion: $heightPosicion, enemyWidthPosicition: $npsWitdthPosicion, enemyHeightPosicin: $npsHeightPosicion, typeButton: true, nameButton: "↑", contactShow: $contactShow)
 
                
                HStack {
                    ButtonControl(posicion: $witdthPosicion, enemyWidthPosicition: $npsWitdthPosicion, enemyHeightPosicin: $npsHeightPosicion, typeButton: true, nameButton: "←", contactShow: $contactShow)
                    ButtonControl(posicion: $witdthPosicion, enemyWidthPosicition: $npsWitdthPosicion, enemyHeightPosicin: $npsHeightPosicion, typeButton: false, nameButton: "→", contactShow: $contactShow)
                }

                ButtonControl(posicion: $heightPosicion, enemyWidthPosicition: $npsWitdthPosicion, enemyHeightPosicin: $npsHeightPosicion, typeButton: false, nameButton: "↓", contactShow: $contactShow)
            }

        }
        
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
