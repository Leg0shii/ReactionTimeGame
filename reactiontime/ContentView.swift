//
//  ContentView.swift
//  reactiontime
//
//  Created by BM on 15.02.20.
//

import SwiftUI

struct StrokeText: View {
    let text: String
    let width: CGFloat
    let color: Color

    var body: some View {
        ZStack{
            ZStack{
                Text(text).offset(x:  width, y:  width)
                Text(text).offset(x: -width, y: -width)
                Text(text).offset(x: -width, y:  width)
                Text(text).offset(x:  width, y: -width)
            }
            .foregroundColor(color)
            Text(text)
        }
    }
}

struct ContentView: View {
    
    struct HeadLineView: ViewModifier {
        func body(content: Content) -> some View {
            return content
            .font(Font.custom("Ariel Rounded MT Bold", size: 40))
        }
    }
    
    struct StartView: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("Ariel Rounded MT Bold", size: 20))
            
        }
    }
    
    var body: some View {
        ZStack{
            Color.blue
            .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    StrokeText(text: "Reaction-TimeZ", width: 1, color: .black)
                    .modifier(HeadLineView())
                    .foregroundColor(.white)
                }
                HStack {
                    StrokeText(text: "Touch the Screen to Start", width: 1, color: .black)
                    .modifier(StartView())
                    .foregroundColor(.white)
                }.padding(.top, 35)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
