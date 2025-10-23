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
    @State private var randomValue = 0
    @State private var rotation = 0.0
    var body: some View {
        ZStack{
            Color.gray.opacity(0.7).ignoresSafeArea()
            VStack{
                Image("Pig").resizable().frame(width:150 , height:150)
                CustomText(text:"Pig")
                Image("pips\(randomValue)")
                    .resizable()
                    .frame(width:150 , height:150)
                    .rotationEffect(.degrees(rotation))
                    .rotation3DEffect(.degrees(rotation), axis : (x: 1.0, y: 0.0, z: 0.0))
                    .padding(50)
                Spacer()
                CustomText(text: "Turn Score \(turnScore)")
                HStack{
                    Button("Roll"){
                        
                    }
                    .buttonStyle(CustomButtonStyle())
                    Button("Hold"){
                        
                    }
                    .buttonStyle(CustomButtonStyle())
                }
                CustomText(text: "Game Score \(gameScore)")
            }
        }
    }
    
}
struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 50)
            .font(Font.custom("Marker Felt", size: 24))
            .padding()
            .background(.red).opacity(configuration.isPressed ? 0.0 : 1.0)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
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
