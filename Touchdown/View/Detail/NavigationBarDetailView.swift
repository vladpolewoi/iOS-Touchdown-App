//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct NavigationBarDetailView: View {
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    HStack {
      Button {
        withAnimation(.easeIn) {
          feedback.impactOccurred()
          shop.selectedProduct = nil
          shop.showingProduct = false
        }
      } label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundStyle(.white)

        Spacer()

        Button {} label: {
          Image(systemName: "cart")
            .font(.title)
            .foregroundStyle(.white)
        }
      }
    }
  }
}

#Preview {
  NavigationBarDetailView()
    .environmentObject(Shop())
    .background(colorBackground)
    .padding()
}
