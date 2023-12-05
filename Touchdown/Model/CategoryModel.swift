//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}
