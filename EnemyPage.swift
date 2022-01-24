//
//  EnemyPage.swift
//  GraphicAndAnimationSwiftUI
//
//  Created by Игорь Сысоев on 24.01.2022.
//

import SwiftUI

struct EnemyPage: View {
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let heidth = geometry.size.height
            let minSize = min(width, heidth)
            
            ZStack {
                Path{ path in
                    path.addArc(
                        center: CGPoint(x: minSize / 2, y: minSize / 2),
                        radius: minSize * 0.4,
                        startAngle: .degrees(0),
                        endAngle: .degrees(180),
                        clockwise: true)
                    path.move(to: CGPoint(x: minSize * 0.1, y: minSize * 0.5))
                    path.addLine(to: CGPoint(x: minSize * 0.1, y: minSize * 0.9))
                    path.addLine(to: CGPoint(x: minSize * 0.5, y: minSize * 0.5))
                    path.addLine(to: CGPoint(x: minSize * 0.9, y: minSize * 0.9))
                    path.addLine(to: CGPoint(x: minSize * 0.9, y: minSize * 0.5))

                }
                .foregroundColor(.pink)
                .shadow(color: .black, radius: 4)
                
                Circle()
                    .frame(width: minSize * 0.1)
                    .foregroundColor(.white)
                    .offset(x: minSize * 0.17, y: minSize * -0.2)
                    .shadow(color: .black, radius: 2)
                Circle()
                    .frame(width: minSize * 0.1)
                    .foregroundColor(.white)
                    .offset(x: minSize * -0.17, y: minSize * -0.2)
                    .shadow(color: .black, radius: 2)
            }
        }
        
    }
}

struct EnemyPage_Previews: PreviewProvider {
    static var previews: some View {
        EnemyPage()
            .frame(width: 200, height: 200)
    }
}
