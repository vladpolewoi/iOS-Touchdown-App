//
//  AddToCardDetailView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct AddToCardDetailView: View {
  @EnvironmentObject var shop: Shop

  var body: some View {
    Button {
      feedback.impactOccurred()
    } label: {
      Spacer()
      Text("Add to cart".uppercased())
        .font(.system(.title2, design: .rounded))
        .fontWeight(.bold)
        .foregroundStyle(.white)
      Spacer()
    }
    .padding(15)
    .background(
      Color(
        red: shop.selectedProduct?.red ?? sampleProduct.red,
        green: shop.selectedProduct?.green ?? sampleProduct.green,
        blue: shop.selectedProduct?.blue ?? sampleProduct.blue
      )
    )
    .clipShape(Capsule())
  }
}

#Preview {
  AddToCardDetailView()
    .environmentObject(Shop())
}
