//
//  PackmanPage.swift
//  GraphicAndAnimationSwiftUI
//
//  Created by Игорь Сысоев on 23.01.2022.
//

import SwiftUI

struct PackmanPage: View {
    @Binding var mirrorPosicion: Bool
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let optimalSize = min(width, height)
            
            ZStack {
                Circle()
                    .frame(width: optimalSize, height: optimalSize)
                    .foregroundColor(.yellow)
                Circle()
                    .stroke(.black, lineWidth: 4)
                    .shadow(color: .black, radius: 2)
                Circle()
                    .frame(width: optimalSize * 0.15, height: optimalSize * 0.15)
                    .offset(
                        x: optimalSize * (mirrorPosicion ? 0.2 : -0.2),
                        y: optimalSize * (mirrorPosicion ? -0.2 : -0.2)
                    )
                    .foregroundColor(.black)
                    .shadow(color: .black, radius: 4)
                
                Path { patch in
                    patch.move(to: CGPoint(
                        x: optimalSize * (mirrorPosicion ? 1 : 0.5)
                        , y: optimalSize * 0.6
                    ))
                    patch.addLine(to: CGPoint(
                        x: optimalSize * (mirrorPosicion ? 0.5 : 0),
                        y: optimalSize * 0.59))
                    
                }
                .stroke(.black, lineWidth: 3)
            }
            
        }
    }
    

}

struct PackmanPage_Previews: PreviewProvider {
    static var previews: some View {
        PackmanPage(mirrorPosicion: .constant(false))
            .frame(width: 200, height: 200)
    }
}
