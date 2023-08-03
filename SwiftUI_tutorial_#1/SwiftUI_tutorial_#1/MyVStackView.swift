//
//  MyVStackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 전민 on 03/08/2023.
//

import SwiftUI

struct MyVStackView:View{
    var body: some View {
        VStack{ // vertical stack. -> 수직
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 70))
                .font(.largeTitle)

            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 70))
                .font(.largeTitle)

            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 70))
                .font(.largeTitle)
        } // VStack
        .background(Color.red)
    }
}
