//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 전민 on 03/08/2023.
//

import SwiftUI

struct MyTextView: View{
    @State
    private var index: Int = 0
    
    // 배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .font(.system(size:30))
                .frame(minWidth: 0, maxWidth: .infinity,minHeight: 0, maxHeight: .infinity)
            
            Spacer()
        }.background(backgroundColors[index])
            .edgesIgnoringSafeArea(.top)
            .onTapGesture {
                print("배경 아이템이 클릭되었다.")
                self.index += 1
                self.index %= backgroundColors.count
            }
        
    }
}

struct MyTextView_Previews: PreviewProvider{
    static var previews: some View{
        MyTextView()
    }
}
