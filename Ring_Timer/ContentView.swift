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
        VStack {
            // MARK: Progress Ring
            ProgressRing()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
