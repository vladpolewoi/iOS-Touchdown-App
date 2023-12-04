//
//  FooterView.swift
//  Touchdown
//
//  Created by Quest76 on 04.12.2023.
//

import SwiftUI

struct FooterView: View {
  var body: some View {
    VStack(alignment: .center, spacing: 10) {
      Text("We offer the most cutting edge, comfortable, lighweight and durable football helmets in the market at affordable prices.")
        .foregroundStyle(.gray)
        .multilineTextAlignment(.center)

      Image("logo-lineal")
        .renderingMode(.template)
        .foregroundStyle(.gray)
        .layoutPriority(0)

      Text("Copyright © Robert Petras\nAll right reserved")
        .font(.footnote)
        .fontWeight(.bold)
        .foregroundStyle(.gray)
        .multilineTextAlignment(.center)
        .layoutPriority(1)
    }
    .padding()
  }
}

#Preview {
  FooterView()
    .previewLayout(.sizeThatFits)
    .background(colorBackground)
}
