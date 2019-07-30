//
//  SettingsService.swift
//  Primitives
//
//  Created by Kevin Conner on 6/25/19.
//  Copyright © 2019 Kevin Conner. All rights reserved.
//

import SwiftUI
import Combine

final class SettingsService : BindableObject {
    
    let willChange = PassthroughSubject<Void, Never>()
    
    var material = Material.white {
        didSet {
            willChange.send()
        }
    }
    
    var isPresentingSettings = false {
        didSet {
            willChange.send()
        }
    }
    
}
