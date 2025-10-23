//
//  ContentView.swift
//  pig
//
//  Created by mason kaydo on 10/22/25.
//

import SwiftUI

struct ContentView: View {
    @State var turnScore: Int = 0
    @State var gameScore: Int = 0
    var body: some View {
        ZStack{
            Color.gray.opacity(0.7).ignoresSafeArea()
            VStack{
                Image("Pig").resizable().frame(width:150 , height:150)
                CustomText(text:"Pig")
                Spacer()
                CustomText(text: "Turn Score \(turnScore)")
                CustomText(text: "Game Score \(gameScore)")
            }
        }
    }
    
}
struct CustomText: View {
    var text: String
    var body: some View {
        Text(text).font(Font.custom("Marker Felt", size: 36))
    }
}
#Preview {
    ContentView()
}
