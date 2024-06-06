//
//  ContentView.swift
//  BASIC Programming
//
//  Created by Clayton Crenshaw on 6/6/24.
//

import SwiftUI

//add custom colors
let red = Color(hex: 0xF3866F)
let green = Color(hex: 0x71BC0B)
let white = Color(hex: 0xFFFFFF)

struct ContentView: View {
    @State var showGameView: Bool = false
    var body: some View {
        ZStack {
            Color.black
            VStack {
                Text("BASIC Programming")
                    .font(.custom("Retro Gaming", size: 40))
                    .multilineTextAlignment(.center)
                    .foregroundColor(red)
                    

            }
            .padding()
        }
        Spacer()
        VStack {
            Color.black
                .ignoresSafeArea()
            Button(action: {}) {
                Text("Play!")
            }
            .padding()
            .foregroundColor(.black)
            .background(Color(red))
        }
        Spacer()
        
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

#Preview {
    ContentView()
}
