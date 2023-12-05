//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct HeaderDetailView: View {
  @EnvironmentObject var shop: Shop

  var body: some View {
    VStack(alignment: .leading, spacing: 6) {
      Text("Protective Gear")

      Text(shop.selectedProduct?.name ?? sampleProduct.name)
        .font(.largeTitle)
        .fontWeight(.black)
    }
    .foregroundStyle(.white)
  }
}

#Preview {
  HeaderDetailView()
    .environmentObject(Shop())
    .previewLayout(.sizeThatFits)
    .padding()
    .background(.gray)
}
