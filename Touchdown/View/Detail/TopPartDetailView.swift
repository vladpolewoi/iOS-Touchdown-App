//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct TopPartDetailView: View {
  @EnvironmentObject var shop: Shop
  @State private var isAnimating: Bool = false

  var body: some View {
    HStack(alignment: .center, spacing: 6) {
      VStack(alignment: .leading, spacing: 6) {
        Text("Price")
          .fontWeight(.semibold)

        Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
          .font(.largeTitle)
          .fontWeight(.black)
          .scaleEffect(1.35, anchor: .leading)
      }
      .offset(y: isAnimating ? -50 : -75)

      Spacer()

      Image(shop.selectedProduct?.image ?? sampleProduct.image)
        .resizable()
        .scaledToFit()
        .offset(y: isAnimating ? 0 : -35)
    }
    .onAppear {
      withAnimation(.easeInOut(duration: 0.75)) {
        isAnimating.toggle()
      }
    }
  }
}

#Preview {
  TopPartDetailView()
    .environmentObject(Shop())
    .padding()
}
