//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct BrandGridView: View {
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
        ForEach(brands) { brand in
          BrandItemView(brand: brand)
        }
      }
      .frame(height: 200)
      .padding(15)
    }
  }
}

#Preview {
  BrandGridView()
}
