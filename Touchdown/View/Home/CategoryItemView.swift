//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct CategoryItemView: View {
  let category: Category

  var body: some View {
    Button {
      
    } label: {
      HStack(alignment: .center, spacing: 6) {
        Image(category.image)
          .renderingMode(.template)
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 30, alignment: .center)
          .foregroundStyle(.gray)

        Text(category.name.uppercased())
          .fontWeight(.light)
          .foregroundStyle(.gray)
      }
      .padding()
      .background(Color.white.cornerRadius(25))
      .background(
        RoundedRectangle(cornerRadius: 25)
          .stroke(Color.gray, lineWidth: 1)
      )
    }
  }
}

#Preview {
  CategoryItemView(category: categories[0])
    .previewLayout(.sizeThatFits)
    .padding()
    .background(colorBackground)
}
