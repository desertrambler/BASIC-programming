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
    @State var isModal: Bool = false
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
            Button("Play") {
                self.isModal = true
            }
            .padding()
            .foregroundColor(.black)
            .background(Color(red))
            .sheet(isPresented: $isModal, content: {
                LoginView()
            })
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

struct LoginView: View {
    var body: some View {
        ZStack {
            Color.black
            VStack {
                Spacer()
                HStack {
                    Text(">Status")
                        .foregroundColor(.white)
                }
                Spacer()
                HStack {
                    Text(">Symbols")
                        .foregroundColor(.white)
                }
                Spacer()
                HStack {
                    Text(">Speed")
                        .foregroundColor(.white)
                }
                Spacer()
                HStack {
                    Text(">Program")
                        .foregroundColor(.white)
                }
                Spacer()
                HStack {
                    Text(">Stack")
                        .foregroundColor(.white)
                }
                Spacer()
                HStack {
                    Text(">Variables")
                        .foregroundColor(.white)
                }
                Spacer()
                HStack {
                    Text(">Output")
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
