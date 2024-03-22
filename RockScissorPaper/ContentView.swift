//
//  ContentView.swift
//  RockScissorPaper
//
//  Created by Vitor     on 20/03/24.
//

import SwiftUI

struct OptionImage: View {
    var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 5)
                .frame(width: 100, height: 100)
            
            Text(text)
                .font(.system(size: 50))
        }
    }
}


struct ContentView: View {
    @State private var options = ["👊", "🖐", "✌️"]
    
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            VStack(spacing: 40) {
                Text("Choose your option:")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                
                ForEach(0..<3) { number in
                    Button{
                        
                    } label: {
                        OptionImage(text: options[number])
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
