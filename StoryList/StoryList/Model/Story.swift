//
//  Story.swift
//  StoryList
//
//  Created by Samar Assi on 15/03/2024.
//

import Foundation
import UIKit

struct Story: Identifiable {
    var id = UUID()
    var image: UIImage
    var name: String
}
