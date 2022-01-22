//
//  PlayAnimationView.swift
//  GraphicAndAnimationSwiftUI
//
//  Created by Игорь Сысоев on 21.01.2022.
//

import SwiftUI

struct PlayAnimationView: View {
    @State private var showButton = false
    
    var body: some View {
        HStack {
            ButtonStart(
                showButton: $showButton,
                buttonName: showButton ? "Out" : "Start"
            )
        }

    }

    
}

struct PlayAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        PlayAnimationView()
    }
}
