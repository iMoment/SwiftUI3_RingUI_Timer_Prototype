//
//  FastingManager.swift
//  Ring_Timer
//
//  Created by Stanley Pan on 2022/01/19.
//

import Foundation

enum FastingState {
    case notStarted
    case fasting
    case feeding
}

class FastingManager: ObservableObject {
    @Published private(set) var fastingState: FastingState = .notStarted
}
