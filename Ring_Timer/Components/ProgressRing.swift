//
//  ProgressRing.swift
//  Ring_Timer
//
//  Created by Stanley Pan on 2022/01/19.
//

import SwiftUI

struct ProgressRing: View {
    @State var progress: Double = 0.0
    
    var body: some View {
        ZStack {
            // MARK: Placeholder Ring
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(.gray)
                .opacity(0.1)
            
            // MARK: Colored Ring
            Circle()
                .trim(from: 0.0, to: min(progress, 1.0))
                .stroke(AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4014265537, green: 0.6402670145, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.4479528666, blue: 0.7060645223, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.771382153, blue: 0.9066230655, alpha: 1)), Color(#colorLiteral(red: 0.6395459175, green: 0.9769180417, blue: 0.9774548411, alpha: 1)), Color(#colorLiteral(red: 0.4014265537, green: 0.6402670145, blue: 1, alpha: 1))]), center: .center), style: StrokeStyle(lineWidth: 15.0, lineCap: .round, lineJoin: .round))
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeIn(duration: 1.0), value: progress)
            
            VStack(spacing: 30) {
                // MARK: Elapsed Time
                VStack(spacing: 5) {
                    Text("Elapsed Time")
                        .opacity(0.7)
                    
                    Text("0:00")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding(.top)
                
                // MARK: Remaining Time
                VStack(spacing: 5) {
                    Text("Remaining Time")
                        .opacity(0.7)
                    
                    Text("0:00")
                        .font(.title2)
                        .fontWeight(.bold)
                }
            }
        }
        .frame(width: 250, height: 250)
        .padding()
        .onAppear {
            progress = 0.85
        }
    }
}

struct ProgressRing_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRing()
    }
}
