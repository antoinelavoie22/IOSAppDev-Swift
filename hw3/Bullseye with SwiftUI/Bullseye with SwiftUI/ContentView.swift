//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var num: Double = 50
    @State var toggle = false
    
    
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(.leading, 20)
                .padding(.top, 20)
                
                Spacer()
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding(.trailing, 20)
                .padding(.top, 20)
            }
            Spacer()
            
            var body: some View {
                VStack {
                    .font(.system(size: 30))
                    Slider(value: num, from: 0, through: 100)
                    
                    VStack{
                            Text("Move the slider to:")
                    }
                    VStack{
                        Text(num)
                    }
                    .padding(.top, 10)
                }
                .padding(.top, 400)
                Spacer()
            }
            
            
            var body: some View {
                VStack{
                    VStack{
                        Text("Exact Mode?")
                    }
                    padding(.bottom, 30)
                    VStack{
                        toggle
                    }
                }
            }
        }
    }
}

