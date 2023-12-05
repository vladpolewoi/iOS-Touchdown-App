//
//  SectionView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct SectionView: View {
  @State var rotateClockwise: Bool
  
  var body: some View {
    VStack(spacing: 0) {
      Spacer()
      
      Text("Categories".uppercased())
        .font(.footnote)
        .fontWeight(.bold)
        .foregroundStyle(.white)
        .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
      
      Spacer()
    }
    .background(colorGray.cornerRadius(25))
  }
}

#Preview {
  SectionView(rotateClockwise: false)
}
