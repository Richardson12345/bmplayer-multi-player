//
//  BMPlayerProtocols.swift
//  Pods
//
//  Created by BrikerMan on 16/4/30.
//
//

import UIKit

extension BMPlayerControlView {
    public enum ButtonType: Int {
        case play       = 101
        case pause      = 102
        case back       = 103
        case fullscreen = 105
        case replay     = 106
    }
}

extension BMPlayer {
    static func formatSecondsToString(_ seconds: TimeInterval) -> String {
        if seconds.isNaN {
            return "00:00"
        }
        
        let hours = Int(seconds) / 3600
        let min = Int(seconds) / 60 % 60
        let sec = Int(seconds.truncatingRemainder(dividingBy: 60))
        
        if seconds < 3600 {
            return String(format: "%02d:%02d", min, sec)
        } else {
            return String(format: "%02d:%02d:%02d", hours, min, sec)
            
        }
    }
}
