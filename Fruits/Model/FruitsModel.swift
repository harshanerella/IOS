//
//  FruitsModel.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 13/02/21.
//

import SwiftUI

// Fruits Data Model

struct Fruit: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}
