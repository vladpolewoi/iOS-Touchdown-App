//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Quest76 on 05.12.2023.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
  @State private var counter: Int = 0
  
  var body: some View {
    HStack(alignment: .center, spacing: 6) {
      Button {
        if counter > 0 {
          feedback.impactOccurred()
          counter -= 1
        }
      } label: {
        Image(systemName: "minus.circle")
      }
      
      Text("\(counter)")
        .fontWeight(.semibold)
        .frame(minWidth: 36)
      
      Button {
        if counter < 100 {
          feedback.impactOccurred()
          counter += 1
        }
      } label: {
        Image(systemName: "plus.circle")
      }
      
      Spacer()
      
      Button {
        feedback.impactOccurred()
      } label: {
        Image(systemName: "heart.circle")
          .foregroundStyle(.pink)
      }
    }
    .font(.system(.title, design: .rounded))
    .foregroundStyle(.black)
    .imageScale(.large)
  }
}

#Preview {
  QuantityFavouriteDetailView()
}
