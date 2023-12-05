//
//  Shop.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? = nil
}
