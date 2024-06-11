//
//  Item.swift
//  iosalarms
//
//  Created by Patrick on 6/11/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
