//
//  ContentView.swift
//  Touchdown
//
//  Created by Quest76 on 04.12.2023.
//

import SwiftUI

struct ContentView: View {
  // MARK: - Props

  @EnvironmentObject var shop: Shop

  // MARK: - Body

  var body: some View {
    ZStack {
      if shop.showingProduct == false && shop.selectedProduct == nil {
        VStack(spacing: 0) {
          NavigationBarView()
            .padding(.horizontal, 15)
            .padding(.bottom)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(.white)
            .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)

          ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
              FeaturedTabView()
                .frame(height: 240)
                .padding(.vertical, 20)

              CategoryGridView()

              TitleView(title: "Helmets")
              LazyVGrid(columns: gridLayout, spacing: 15) {
                ForEach(products) { product in
                  ProductItemView(product: product)
                    .onTapGesture {
                      feedback.impactOccurred()

                      withAnimation(.easeOut) {
                        shop.selectedProduct = product
                        shop.showingProduct = true
                      }
                    }
                }
              }
              .padding(15)

              TitleView(title: "Brands")
              BrandGridView()

              FooterView()
                .padding(.horizontal)
            }
          }
        }
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
      } else {
        ProductDetailView()
      }
    }
    .ignoresSafeArea(.all, edges: .top)
  }
}

#Preview {
  ContentView()
    .environmentObject(Shop())
}
