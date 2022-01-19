//
//  ContentView.swift
//  Ring_Timer
//
//  Created by Stanley Pan on 2022/01/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            content
        }
    }
    
    var content: some View {
        ZStack {
            VStack(spacing: 40) {
                // MARK: Title
                Text("Let's get started!")
                    .font(.headline)
                    .foregroundColor(Color(#colorLiteral(red: 0.4014265537, green: 0.6402670145, blue: 1, alpha: 1)))
                
                // MARK: Fasting Plan
                Text("16:8")
                    .fontWeight(.semibold)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 8)
                    .background(.thinMaterial)
                    .cornerRadius(20)
                
                Spacer()
            }
            .padding()
            
            VStack(spacing: 40) {
                // MARK: Progress Ring
                ProgressRing()
                
                HStack(spacing: 60) {
                    // MARK: Start Time
                    VStack(spacing: 5) {
                        Text("Start")
                            .opacity(0.7)
                        
                        Text(Date(), format: .dateTime.weekday().hour().minute().second())
                            .fontWeight(.bold)
                    }
                    
                    // MARK: Start Time
                    VStack(spacing: 5) {
                        Text("End")
                            .opacity(0.7)
                        
                        Text(Date().addingTimeInterval(16), format: .dateTime.weekday().hour().minute().second())
                            .fontWeight(.bold)
                    }
                }
                // MARK: Button
                Button(action: { }, label: {
                    Text("Start fasting")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 8)
                        .background(.thinMaterial)
                        .cornerRadius(20)
                })
            }
            .padding()
        }
        .foregroundColor(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
