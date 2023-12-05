//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct BrandItemView: View {
  let brand: Brand

  var body: some View {
    Image(brand.image)
      .resizable()
      .scaledToFit()
      .padding()
      .background(Color.white.cornerRadius(25))
      .background(RoundedRectangle(cornerRadius: 25).stroke(.gray, lineWidth: 1))
  }
}

#Preview {
  BrandItemView(brand: brands[0])
    .previewLayout(.sizeThatFits)
    .padding()
    .background(colorBackground)
}
