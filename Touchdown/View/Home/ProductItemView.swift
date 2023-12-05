//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct ProductItemView: View {
  let product: Product

  var body: some View {
    VStack(alignment: .leading, spacing: 6) {
      ZStack {
        Image(product.image)
          .resizable()
          .scaledToFit()
          .padding(10)
      }
      .background(Color(red: product.red, green: product.green, blue: product.blue))
      .cornerRadius(25)
      
      Text(product.name)
        .font(.title3)
        .fontWeight(.black)
      
      Text(product.formattedPrice)
        .fontWeight(.semibold)
        .foregroundStyle(.gray)
    }
  }
}

#Preview {
  ProductItemView(product: products[0])
}
