//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct ProductDetailView: View {
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    VStack(alignment: .leading, spacing: 5) {
      // Navbar
      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
      
      // Header
      HeaderDetailView()
        .padding(.horizontal)
      
      // Detail top part
      TopPartDetailView()
        .padding(.horizontal)
        .zIndex(1)
      
      // Detail bottom part
      VStack(alignment: .center, spacing: 0) {
        // Ratings + sizes
        RatingSizesDetailView()
          .padding(.top, -20)
          .padding(.bottom, 10)
        
        // Description
        ScrollView(.vertical, showsIndicators: false) {
          Text(shop.selectedProduct?.description ?? sampleProduct.description)
            .font(.system(.body, design: .rounded))
            .foregroundStyle(.gray)
            .multilineTextAlignment(.leading)
        }
        
        // Quantity + favourite
        QuantityFavouriteDetailView()
          .padding(.vertical, 10)
        
        // Add to cart
        AddToCardDetailView()
          .padding(.bottom, 20)
      }
      .padding(.horizontal)
      .background(Color.white.clipShape(CustomShape())
        .padding(.top, -105)
      )
    }
    .zIndex(0)
    .ignoresSafeArea(.all, edges: .all)
    .background(
      Color(
        red: shop.selectedProduct?.red ?? sampleProduct.red,
        green: shop.selectedProduct?.green ?? sampleProduct.green,
        blue: shop.selectedProduct?.blue ?? sampleProduct.blue
      )
      .ignoresSafeArea(.all, edges: .all)
    )
  }
}

#Preview {
  ProductDetailView()
    .environmentObject(Shop())
}
