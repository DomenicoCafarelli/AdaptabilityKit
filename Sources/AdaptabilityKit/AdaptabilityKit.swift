//
//  AdaptabilityKit.swift
//  AdaptabilityKit
//
//  Created by Vincenzo Pascarella and Domenico Cafarelli on 12/09/22.
//

import Foundation
import SwiftUI

enum Device {
    
    //Devices Cases
    case iPhone8
    case iPhone8Plus
    case iPhoneSE
    case iPhoneX
    case iPhone11Pro
    case iPhone13Mini
    case iPhone11ProMax
    case iPhone13
    case iPhone13Pro
    case iPhone13ProMax
    
    //TODO: Add iPhone 14 Devices
    
    var width: CGFloat{
        
        switch self {
        case .iPhone8:
            return 375
        case .iPhone8Plus:
            return 414
        case .iPhoneSE:
            return 320
        case .iPhoneX:
            return 375
        case .iPhone11Pro:
            return 375
        case .iPhone13Mini:
            return 373
        case .iPhone11ProMax:
            return 414
        case .iPhone13:
            return 390
        case .iPhone13Pro:
            return 390
        case .iPhone13ProMax:
            return 428
        }
    }
    
    var height: CGFloat{
        
        switch self {
        case .iPhone8:
            return 667
        case .iPhone8Plus:
            return 736
        case .iPhoneSE:
            return 568
        case .iPhoneX:
            return 812
        case .iPhone11Pro:
            return 812
        case .iPhone13Mini:
            return 812
        case .iPhone11ProMax:
            return 896
        case .iPhone13:
            return 844
        case .iPhone13Pro:
            return 844
        case .iPhone13ProMax:
            return 926
        }
    }
}

extension View{
    func adaptiveFrame(width: CGFloat? = nil, height: CGFloat? = nil, alignment: Alignment = .center,device: Device = .iPhone13) -> some View{
        let widthScreen = UIScreen.main.bounds.size.width
        let heightScreen = UIScreen.main.bounds.size.height
        let isWidth = width != nil
        let isHeight = height != nil
        let adaptedWidth = isWidth ? widthScreen * (width! / device.width) : nil
        let adaptedHeight = isHeight ? heightScreen * (height! / device.height) : nil
        
        return self.frame(width: adaptedWidth, height: adaptedHeight, alignment: alignment)
    }
}
