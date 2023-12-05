//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct FeaturedTabView: View {
  var body: some View {
    TabView {
      ForEach(players) { player in
        FeaturedItemView(player: player)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

#Preview {
  FeaturedTabView()
    .padding()
    .background(.gray)
}
