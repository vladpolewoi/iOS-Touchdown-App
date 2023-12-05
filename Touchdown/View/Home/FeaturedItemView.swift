//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct FeaturedItemView: View {
  let player: Player

  var body: some View {
    Image(player.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(25)
  }
}

#Preview {
  FeaturedItemView(player: players[0])
    .previewLayout(.sizeThatFits)
    .padding()
    .background(colorBackground)
}
