//
//  TitleView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct TitleView: View {
  var title: String
  
  var body: some View {
    HStack {
      Text(title)
        .font(.largeTitle)
        .fontWeight(.heavy)

      Spacer()
    }
    .padding(.horizontal)
    .padding(.top, 15)
    .padding(.bottom, 10)
  }
}

#Preview {
  TitleView(title: "Helmet")
}
