//
//  ContentView.swift
//  Swift_tutorial_#1
//
//  Created by 전민 on 03/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    // @State 값의 변화를 감지 -> 뷰에 적용(재 랜더링)
    @State
    private var isActivated: Bool = false
    @State
    private var clickCount: Int = 1
    var body: some View {
        
        NavigationView{
            VStack{
                // 몸체
                HStack{ // HStack에 VStack 세개 넣음
                    MyVStackView()
                    MyVStackView()
                    MyVStackView()
                } //HStack
                .padding(isActivated ? 50.0 : 10.0) // top에만 padding 30 넣음(inspector에서 gui로 설정 가능)
                //
                .background(isActivated ? Color.yellow : Color.black)
                // 탭 제스쳐 추가
                .onTapGesture {
                    print("HStack이 \(clickCount)번 클릭되었다.")
                    self.clickCount += 1
                    
                    // 애니메이션과 함께
                    withAnimation{
                        // toggle() : true이면 false로 false 이면 true로 바꿔줌
                        self.isActivated.toggle()
                    }
                } // Hstack
                
                // 네비게이션 버튼(링크)
                NavigationLink(destination: MyTextView()){
                    Text("네비게이션")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }.padding(.top,50)
            }
        } //Navigation
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
